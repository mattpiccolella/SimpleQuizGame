//
//  QuizQuestion.h
//
//  Objective-C class to represent our questions object. It is best to use
//  separate classes to model the data that you plan to use. In our application,
//  this class serves as the MODEL layer of the Model-View-Controller framework.
//

#import <Foundation/Foundation.h>

@interface QuizQuestion : NSObject

@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer;

- (id)initWithQuestion:(NSString*)question andAnswer:(NSString*)answer;

@end
