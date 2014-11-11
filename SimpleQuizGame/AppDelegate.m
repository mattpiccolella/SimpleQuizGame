//
//  AppDelegate.m
//
//  The App Delegate is like the master of your application. It responds to important events throughout
//  the lifetime of your application, from when it is first loaded to when the user closes it. It handles
//  the startup of your application, transitions made from one view to another, and preserves data central
//  to the application that you want to use across multiple view controllers.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    //  Sent when the application is about to move from active to inactive state.
    //  This is used for temporary interruptions (text notifications, etc.) or when your user quits the app.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    //  Sent when your application enters the background of your user's device.
    //  This is used to stop computationally heavy tasks while the user is not using the application.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    //  Sent when your application re-enters the foreground from the background.
    //  This is used to undo changes that you made when entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    //  Sent when your application becomes active after having been inactive.
    //  Similar to the above method, use this to undo changes you made when the app wasn't active.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    //  Sent when the application is about to terminate.
    //  This is used to save important data before the application is killed.
}

@end
