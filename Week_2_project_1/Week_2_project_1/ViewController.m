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

NSString *append(NSString *theFirst, NSString *theSecond){
    
    return thingsss;
}



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
    
    
    
    -(NSString) add(int firstNumbers, int secondNumbers){
        
    }
    
    
    
    
    
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
