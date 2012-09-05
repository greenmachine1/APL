//
//  ViewController.m
//  Week_2_project_1
//
//  Created by Cory Green on 8/31/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

// Declaration of myFunction, works with no known issues.
int add(int first, int second){
    int addTogether = first + second;
    return addTogether;
} 

void compareTwoNumbers(int firstNumber, int secondNumber){
    if(firstNumber == secondNumber){
        
        NSLog(@"The two numbers are the same");
    }
    else{
        
        NSLog(@"The two numbers are not the same");
    }
}

// creating an NSString function that passes in two strings then combines them then returns the result
NSString *append(NSString *theFirst, NSString *theSecond){
    
    // creating a mutable string that adds the two strings together
    NSMutableString *returnedString = [[NSMutableString alloc] init];
    
    // appending those two strings
    [returnedString appendString:theFirst];
    [returnedString appendString:@" "];
    [returnedString appendString:theSecond];
    
    // returning that combined string
    return returnedString;
    
};



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    // declaring 2 variables together and passing them through to my add function
    int firstNumber = 20;
    int secondNumber = 9032;

    int numberOne = 56;
    int numberTwo = 56;
    
    // call to myFunction()
    NSLog(@"The two numbers %d and %d when added together are %d", firstNumber, secondNumber,
          add(firstNumber, secondNumber));
    
    // call my compareTwoNumbers()
    NSLog(@"The two numbers to be compared are %d and %d", numberOne, numberTwo);
    compareTwoNumbers(numberOne, numberTwo);
    
    NSString *firstly = [[NSString alloc] initWithString:@"poop"];
    NSString *secondly = [[NSString alloc] initWithString:@"poopy"];
   
    NSLog(append(firstly, secondly));
    
    
    
    
    
    
    
    
    
    // this is where my code will take place
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
