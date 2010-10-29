//
//  StatusViewController.h
//  Wordive
//
//  Created by yoda on 10/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface StatusViewController : UIViewController {
	IBOutlet UIButton *startTest;
	IBOutlet UIButton *editData;
	UINavigationController *navController;
	UIViewController *recordViewController;
	UIViewController *problemViewController;
}

@property (nonatomic, retain) UINavigationController *navController;
@property (nonatomic, retain) UIViewController *recordViewController;
@property (nonatomic, retain) UIViewController *problemViewController;

- (IBAction)startTest:(id)sender;
- (IBAction)editData:(id)sender;

@end
