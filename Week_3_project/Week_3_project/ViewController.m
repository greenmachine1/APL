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
    
    // this is just a practice of what is going to be coming up for this weeks assignment
    int returnedValue = [self myFunction];
    
    NSLog(@"%i", returnedValue);
    
    int addedVariable = [self add:returnedValue second:90];
    
    NSLog(@"%i", addedVariable);

    // calling on the append function
    NSLog([self append:@"Cory" secondString:@"Green"]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

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
