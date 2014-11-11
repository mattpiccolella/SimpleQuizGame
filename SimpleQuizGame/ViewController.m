//
//  ViewController.m
//
//  The View Controller serves as a link between the data of an application and how that data
//  appears to a user. The View Controller is responsible for intercepting events from users,
//  using these events to make informed decisions about what the application should do, and
//  then adjusting the view to respond to these.
//

#import "ViewController.h"
#import "QuizQuestion.h"

//  We need to conform to the UITextFieldDelegate protocol so we can exit our text box.
//  See: https://developer.apple.com/library/ios/documentation/general/conceptual/Devpedia-CocoaApp/Responder.html
@interface ViewController () <UITextFieldDelegate>

//  Here are all of our outlets.
//  Outlets are properties whose values you can set and have them appear graphically. Use these
//  when you need to change a text label, make a button disappear, etc. You can create these
//  by dragging from the Interface Builder.
//  See: https://developer.apple.com/library/ios/documentation/general/conceptual/Devpedia-CocoaApp/Outlet.html
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UITextField *answerField;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;

//  Here are your actions.
//  Actions essentially are methods that respond to certain events. This event could be touching a button,
//  swiping through a table view, or any number of things. When we create these by dragging from interface
//  builder, our method stubs get added automatically.
//  See: https://developer.apple.com/library/ios/documentation/general/conceptual/Devpedia-CocoaApp/TargetAction.html
- (IBAction)answerButton:(id)sender;
- (IBAction)nextQuestionButton:(id)sender;

@property (strong, nonatomic) NSMutableArray *questionsArray;
@property (nonatomic) NSInteger currentIndex;
@property (nonatomic) NSInteger score;

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //  Perform anything you need to do to present the initial view here.
    //  In this case, we initialize the questions and display the first one.
    
    self.questionsArray = [self loadQuestionsArray];
    self.currentIndex = 0;
    self.score = 0;
    [self setInterfaceForCurrentQuestion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)answerButton:(id)sender {
    //  Respond to the press of the answer button.
    if ([self isQuestionCorrect]) {
        [self.answerLabel setText:@"Correct"];
        self.score++;
        [self.scoreLabel setText:[self currentScore]];
    } else {
        [self.answerLabel setText:@"Incorrect"];
    }
    [self.answerLabel setHidden:FALSE];
}

- (IBAction)nextQuestionButton:(id)sender {
    self.currentIndex++;
    [self setInterfaceForCurrentQuestion];
}

- (NSMutableArray*) loadQuestionsArray {
    //  Good to use this to keep it GENERIC. Could later load from a database, remote server, etc.
    QuizQuestion *question1 = [[QuizQuestion alloc] initWithQuestion:@"What is the capital of Oregon?" andAnswer:@"Salem"];
    QuizQuestion *question2 = [[QuizQuestion alloc] initWithQuestion:@"How many species of penguin are there?" andAnswer:@"17"];
    QuizQuestion *question3 = [[QuizQuestion alloc] initWithQuestion:@"Who performs the song 'Hey Jude'?" andAnswer:@"The Beatles"];
    return [[NSMutableArray alloc] initWithObjects:question1, question2, question3, nil];
}

- (QuizQuestion*) currentQuestion {
    NSUInteger currentQuestionIndex = (NSUInteger) (self.currentIndex % [self.questionsArray count]);
    return [self.questionsArray objectAtIndex:currentQuestionIndex];
}

- (NSString*) currentScore {
    return [[NSString alloc] initWithFormat:@"Score: %d", self.score];
}

- (void)setInterfaceForCurrentQuestion {
    //  Good to keep user interface changes grouped together in methods like this.
    QuizQuestion *currentQuestion = [self currentQuestion];
    [self.questionLabel setText:currentQuestion.question];
    [self.answerField setText:@""];
    [self.answerLabel setHidden:TRUE];
    [self.scoreLabel setText:[self currentScore]];
}

- (BOOL)isQuestionCorrect {
    return [self.answerField.text isEqualToString:[[self currentQuestion] answer]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    //  Method needed to make sure we can exit the keyboard.
    [textField resignFirstResponder];
    return NO;
}
@end
