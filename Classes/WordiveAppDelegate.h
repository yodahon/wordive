//
//  WordiveAppDelegate.h
//  Wordive
//
//  Created by yoda on 10/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StatusViewController;
@class RecordViewController;
@class ProblemViewController;

@interface WordiveAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *navController;
	StatusViewController *statusViewController;
	RecordViewController *recordViewController;
	ProblemViewController *problemViewController;
	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
//@property (nonatomic, retain) IBOutlet UINavigationController *navController;

@end

