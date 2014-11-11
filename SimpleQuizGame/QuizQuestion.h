//
//  QuizQuestion.h
//  SimpleQuizGame
//
//  Created by Matt on 11/10/14.
//  Copyright (c) 2014 Matthew Piccolella. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuizQuestion : NSObject

@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer;

- (id)initWithQuestion:(NSString*)question andAnswer:(NSString*)answer;

@end
