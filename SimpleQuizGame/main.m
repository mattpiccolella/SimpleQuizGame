//
//  main.m
//
//  Where we see the intersection of Objective-C. Every C application must have a method called
//  "main" to run, and we see that here. Essentially it starts our application using our
//  AppDelegate. Don't worry about touching this file ever.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
