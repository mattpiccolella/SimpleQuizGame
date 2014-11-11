//
//  ViewController.m
//  SimpleQuizGame
//
//  Created by Matt on 11/10/14.
//  Copyright (c) 2014 Matthew Piccolella. All rights reserved.
//

#import "ViewController.h"
#import "QuizQuestion.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UITextField *answerField;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
- (IBAction)answerButton:(id)sender;
- (IBAction)nextQuestionButton:(id)sender;

@property (strong, nonatomic) NSMutableArray *questionsArray;
@property (nonatomic) NSInteger currentIndex;
@property (nonatomic) NSInteger score;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.questionsArray = [self loadQuestionsArray];
    self.currentIndex = 0;
    self.score = 0;
    QuizQuestion *currentQuestion = [self currentQuestion];
    [self.questionLabel setText:currentQuestion.question];
    [self.answerLabel setHidden:TRUE];
    [self.scoreLabel setText:[self currentScore]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)answerButton:(id)sender {
}

- (IBAction)nextQuestionButton:(id)sender {
    
}

- (NSMutableArray*) loadQuestionsArray {
    // Good to use this to keep it GENERIC. Could later load from a database, remote server, etc.
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
@end
