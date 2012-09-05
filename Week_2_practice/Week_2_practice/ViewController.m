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
    int a = 45;
    int b = 90;
    int c = 34;
    int d = 34;
    
    // my function called
    int newValue = [ViewController add: a anotherValue: b];
    
    // experimenting with method calls
    NSLog(@"%i", newValue);
    
    BOOL boolReturnValue = [ViewController compare:c secondValue:d];
    NSLog(@"The two numbers %i", boolReturnValue);
}

// having to make it a class method

//<-------------------- my custom function ----------------------->
+ (int)add:(int)a anotherValue:(int)b
{
    return a + b;
}

+ (BOOL)compare:(int)c secondValue:(int)d
{
    if(c == d){
        return YES;
    }
    else{
        return NO;
    }
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
