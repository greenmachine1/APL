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
     
     Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
     done^
     
     
     
     
     Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
     done^
     
     
     
     Call the Add function passing in two integer values. Capture the return of this function into a variable.
     done ^
     
     
     
     Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
     
     
     Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
     done ^
     
     Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
     
    
    */
// start ---------------------------------------------------------------------------------------------------------------->
    
    // declaring variables
    
    int number1 = 50;
    int number2 = 129;
    
    NSInteger number1NSInteger = 45;
    NSInteger number2NSInteger = 46;
    
    
    // this string will be the first part of my append function which is passed in to my displayAlert function
    NSString *firstString = [[NSString alloc] initWithString:@"The number is"];
    
    

    // calls the add function which adds two ints together and returns the result
    int returnedValue = [self add:number1 second:number2];
    
    
    // converted returnedValue from an Int to an NSNumber, then put it in a string
    NSNumber *newNumberFromReturnedValue = [[NSNumber alloc] initWithInt:returnedValue];
    NSString *bundledString = [[NSString alloc] initWithFormat:@"%@ %@",firstString, newNumberFromReturnedValue];
    
    
    // mutable string outcome is the end result if the two NSIntegers are equal
    NSMutableString *outCome = [[NSMutableString alloc] initWithFormat:@"The result that %i and %i are equal is ", number1NSInteger, number2NSInteger];
    
    // if compare returns true, then append string, if not then return with false.
    if ([self compare:number1NSInteger secondNumber:number2NSInteger] == TRUE)
    {
        [outCome appendString:@"true"];
    }
    
    else{
        [outCome appendString:@"false"];
    }
    
        
    
    // this is the final string which finally gets passed to the displayAlertWithString function    
    NSString *finalString = [[NSString alloc] initWithFormat:@"%@ %@", bundledString, outCome];
    
   
    
    
    
    
    
    // the end result!
    
    [self displayAlertWithString:finalString];
    
// end------------------------------------------------------------------------------------------------------------------->
   
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

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
-(BOOL)compare:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber
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
    NSMutableString *mutableStringThing = [[NSMutableString alloc] initWithString:firstString];
    
    if (mutableStringThing != nil){
        
        [mutableStringThing appendString:second];
    }
    
    return mutableStringThing;
    
    
}





// takes a string and displays it.
-(void)displayAlertWithString:(NSString *)string
{
    
    UIAlertView *newAlert = [[UIAlertView alloc] initWithTitle:@"My text box!!" message: string delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
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
