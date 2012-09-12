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
    /*
     Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
     Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
     Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
     Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
     Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
     Call the Add function passing in two integer values. Capture the return of this function into a variable.
     Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
     Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
     Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
     
    
    */
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
    NSNumber *newNSNumber = [[NSNumber alloc] initWithInteger:newNumber];
    
    NSLog(@"%@", newNSNumber);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

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
