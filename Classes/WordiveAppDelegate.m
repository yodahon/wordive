//
//  WordiveAppDelegate.m
//  Wordive
//
//  Created by yoda on 10/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "WordiveAppDelegate.h"
#import "StatusViewController.h"
#import "RecordViewController.h"
#import "ProblemViewController.h"

@implementation WordiveAppDelegate

@synthesize window;
//@synthesize navController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    statusViewController = [[StatusViewController alloc] init];
	recordViewController = [[RecordViewController alloc] init];
	problemViewController = [[ProblemViewController alloc] init];
	
	statusViewController.recordViewController = recordViewController;
	statusViewController.problemViewController = problemViewController;
	
	navController = [[UINavigationController alloc] initWithRootViewController:statusViewController];
	[navController setNavigationBarHidden:TRUE];
	
	statusViewController.navController = navController;
	recordViewController.navController = navController;
	problemViewController.navController = navController;
	
	[window addSubview:navController.view];
    [window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end