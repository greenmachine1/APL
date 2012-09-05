//
//  ViewController.m
//  Week_2_Practice
//
//  Created by Cory Green on 9/5/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // my function called
    int newValue = [ViewController myFunction: 45 anotherValue: 90];
    
    // experimenting with method calls
    NSLog(@"%i", newValue);
}

// having to make it a class method

//<-------------------- my custom function ----------------------->
+ (int)myFunction:(int)a anotherValue:(int)b
{
    return a + b;
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
