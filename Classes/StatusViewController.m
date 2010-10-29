    //
//  StatusViewController.m
//  Wordive
//
//  Created by yoda on 10/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "StatusViewController.h"


@implementation StatusViewController

@synthesize navController;
@synthesize recordViewController;
@synthesize problemViewController;


/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


- (IBAction)startTest:(id)sender
{
	[navController pushViewController:problemViewController animated:TRUE];
	NSLog(@"START TEST Pressed...");
}

- (IBAction)editData:(id)sender
{
	[navController pushViewController:recordViewController animated:TRUE];

	NSLog(@"Edit Data Pressed...");
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];

}


- (void)dealloc {
    [super dealloc];
}


@end
