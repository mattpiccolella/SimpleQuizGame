//
//  SimpleQuizGameTests.m
//
//  Place your tests here! Testing is important, and do not neglect it.
//
//  For more on iOS testing, see:
//  https://developer.apple.com/library/IOs/documentation/DeveloperTools/Conceptual/testing_with_xcode/testing_3_writing_test_classes/testing_3_writing_test_classes.html
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface SimpleQuizGameTests : XCTestCase

@end

@implementation SimpleQuizGameTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
