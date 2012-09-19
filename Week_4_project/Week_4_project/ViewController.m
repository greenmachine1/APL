//
//  ViewController.m
//  Week_4_project
//
//  Created by Cory Green on 9/18/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    //<----------------------------------------- start of my code! ------------------------------------------------>
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(button != nil){
        
        button.frame = CGRectMake(10.0f, 10.0f, 100.0f, 50.0f);
        [button setTitle:@"Push me" forState:UIControlStateNormal];
        [button setTitle:@"Pushed" forState:UIControlStateHighlighted];
        [self.view addSubview:button];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
