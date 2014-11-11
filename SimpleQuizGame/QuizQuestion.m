//
//  QuizQuestion.m
//  SimpleQuizGame
//
//  Created by Matt on 11/10/14.
//  Copyright (c) 2014 Matthew Piccolella. All rights reserved.
//

#import "QuizQuestion.h"

@implementation QuizQuestion

- (id)initWithQuestion:(NSString *)question andAnswer:(NSString *)answer {
    self = [super init];
    if (self) {
        self.question = question;
        self.answer = answer;
    }
    return self;
}

@end
