//
//  ViewController.m
//  Week_3_project
//
//  Created by Cory Green on 9/9/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    NSString *firstStringValue = [[NSString alloc] initWithString:@"Cory"];
    NSString *secondStringValue = [[NSString alloc] initWithString:@"Green"];
    
    int firstIntegerValue = 6;
    int secondIntegerValue = 90;
    
    
    // this is just a practice of what is going to be coming up for this weeks assignment
    int returnedValue = [self myFunction];
    
    NSLog(@"%i", returnedValue);
    
    int addedVariable = [self add:returnedValue second:secondIntegerValue];
    
    NSLog(@"%i", addedVariable);

    // calls on the displayAlertWithString using the append function output
    [self displayAlertWithString:[self append:firstStringValue secondString:secondStringValue]];
    
    // taking the add function and using the result into newNumber
    int newNumber = [self add:firstIntegerValue second:secondIntegerValue];
    
    // assigning newNSNumber with the result of newNumber
    NSNumber *newNSNumber = [[NSNumber alloc] initWithInt:newNumber];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//<-------------------------custom functions here ------------------------>

-(int)myFunction
{
    return 5;
}

-(int)add:(int)first second:(int)second
{
    return first + second;
}

// function used to append two strings together then return the results
-(NSString*)append:(NSString*)firstString secondString:(NSString*)secondString
{
    NSMutableString *mutableStringThing = [[NSMutableString alloc] init];
    
    [mutableStringThing appendString:firstString];
    [mutableStringThing appendString:@" "];
    [mutableStringThing appendString:secondString];
    
    return mutableStringThing;
    
}

// takes a string and displays it.
-(void)displayAlertWithString:(NSString *)string
{
    UIAlertView *newAlert = [[UIAlertView alloc] initWithTitle:@"New title" message:string delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
    
    [newAlert show];
}














//<----------------------end of custom functions-------------------------->

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
