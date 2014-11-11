//
//  QuizQuestion.m
//  
//  Objective-C class to represent our questions object. It is best to use
//  separate classes to model the data that you plan to use. In our application,
//  this class serves as the MODEL layer of the Model-View-Controller framework.
//

#import "QuizQuestion.h"

@implementation QuizQuestion

// Constructor with named parameters in-line are very helpful for developers.
- (id)initWithQuestion:(NSString *)question andAnswer:(NSString *)answer {
    self = [super init];
    if (self) {
        self.question = question;
        self.answer = answer;
    }
    return self;
}

@end
