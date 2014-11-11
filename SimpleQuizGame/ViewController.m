//
//  ViewController.m
//  SimpleQuizGame
//
//  Created by Matt on 11/10/14.
//  Copyright (c) 2014 Matthew Piccolella. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UITextField *answerField;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
- (IBAction)answerButton:(id)sender;
- (IBAction)nextQuestionButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)answerButton:(id)sender {
}

- (IBAction)nextQuestionButton:(id)sender {
}
@end
