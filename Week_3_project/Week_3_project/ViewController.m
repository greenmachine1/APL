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
     done ^
     
     Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
     done ^
     
     Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
     done ^
     
     Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
     done^
     
     Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
     done^
     
     Call the Add function passing in two integer values. Capture the return of this function into a variable.
     done ^
     
     Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
     
     
     Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
     Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
     
    
    */
    
    // declaring my variables
    NSString *firstStringValue = [[NSString alloc] initWithString:@"Cory"];
    NSString *secondStringValue = [[NSString alloc] initWithString:@"Green"];
    
    int firstIntegerValue = 6;
    int secondIntegerValue = 90;
    // done declaring variables
    
    
    
    // creating a placeholder for the new string that gets returned from the append function
    NSString *newString =[[NSString alloc] initWithString:
                          [self append:firstStringValue second:secondStringValue]];
    
    
//<--------------------------- section is for converting the integer value to a string --------------------------------->
    
    // storing my returned value from my add function into an int called returnedValueFromAddFunction
    int returnedValueFromAddFunction = [self add:firstIntegerValue second:secondIntegerValue];
    
    // initializing newNumer with the returned value of returnedValueFromAddFunction
    NSNumber *newNumber = [[NSNumber alloc] initWithInt:returnedValueFromAddFunction];
    
    // made a mutable string
    NSMutableString *newStringThing = [[NSMutableString alloc] initWithString:@""];
    
    // appendingFormat with newNumber
    [newStringThing appendFormat:@"%@", newNumber];
    
//<------------------------------------------------- end ---------------------------------------------------------------->

    // calls the displayAlertWithString function passing in the newString NSString which appends two strings
    [self displayAlertWithString:newString secondString:newStringThing];
    
  
   
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//<-------------------------custom functions here ------------------------>


// my add function
-(int)add:(int)first second:(int)second
{
    return first + second;
}

// my compare function
-(BOOL)compare:(NSInteger *)firstNumber secondNumber:(NSInteger *)secondNumber
{
    if(firstNumber == secondNumber){
        return YES;
    }
    else{
        return NO;
    }
}

// function used to append two strings together then return the results
-(NSString*)append:(NSString*)firstString second:(NSString*)second
{
    NSMutableString *mutableStringThing = [[NSMutableString alloc] init];
    
    [mutableStringThing appendString:firstString];
    [mutableStringThing appendString:@" "];
    [mutableStringThing appendString:second];
    
    return mutableStringThing;
    
}

// takes a string and displays it.
-(void)displayAlertWithString:(NSString *)string secondString:(NSString *)secondString
{
    UIAlertView *newAlert = [[UIAlertView alloc] initWithTitle:@"New title" message: string delegate:nil cancelButtonTitle:secondString otherButtonTitles:nil];
    
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
