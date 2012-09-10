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
    /*int a = 45;
    int b = 90;
    int c = 34;
    int d = 34;
    
    
    
    // using an instance method!
    // have to instantiate an object first that uses the ViewController
    // @interface
    ViewController *myObject = [[ViewController alloc] init];
    int result = [myObject add:a anotherValue:b];
    
    NSLog(@"%i", result);
    
    // using myObject, I can instantiate different methods with it.
    BOOL returnBoolValue = [myObject compare:c secondValue:d];
    
    NSLog(@"The two numbers %i", returnBoolValue);
    
    // proof that I can instantiate an object and use different versions of it
    // for different methods
    NSLog([myObject thisValue:@"Hello" anotherString:@"World"]);

    // calls an alert to the ios device
    UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Hello!" message:[myObject thisValue:@"Hello" anotherString:@"World"] delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil] autorelease];
    
    // calls the alert pointer to show the alert
    [alert show]; */
    
    
    // proper way to call the function!
    [self newFunction:@"Hallo!"];
    
}



//<-------------------- my custom functions ----------------------->

- (int)add:(int)a anotherValue:(int)b
{
    return a + b;
}

- (BOOL)compare:(int)c secondValue:(int)d
{
    if(c == d){
        return YES;
    }
    else{
        return NO;
    }
}

// function appends the two passed in strings and returns both added together.
- (NSString *)thisValue:(NSString *)firstString anotherString:(NSString *)secondString
{
    // creating a mutable string.
    NSMutableString *newString = [[NSMutableString alloc] initWithString:@""];
    [newString appendString:firstString];
    [newString appendString:@" "];
    [newString appendString:secondString];
    
    return newString;
}

// function newFunction
- (void)newFunction:(NSString *)newString
{
    NSLog(@"%@", newString);
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
