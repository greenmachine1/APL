//
//  ViewController.m
//  Week_2_Project
//
//  Created by Cory Green on 9/6/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // changed the background color of my ViewController
    self.view.backgroundColor = [UIColor colorWithRed:0.1 green:0.6 blue:1.0 alpha:1.0];
    
    
        // creating a label which is defined in my ViewController.h file
    myLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f, 20.0f)];
        // creating a background label color to better debug
        // do code if myLabel is full of info
    if (myLabel != nil){
        myLabel.backgroundColor = [UIColor greenColor];
        myLabel.text = @"This is myLabel";
        myLabel.textAlignment = UITextAlignmentCenter;
    }
    
        // makes myLabel a sibling of view
    [self.view addSubview:myLabel];
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
