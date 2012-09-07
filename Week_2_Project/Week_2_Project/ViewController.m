//
//  ViewController.m
//  Week_2_Project
//
//  Created by Cory Green on 9/6/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    

    // changed the background color of my ViewController
    self.view.backgroundColor = [UIColor colorWithRed:0.1 green:0.6 blue:1.0 alpha:1.0];
    
    
//<---------------------- this portion will be used to define the lables
        // creating a label which is defined in my ViewController.h file
        // this denotes the location and size of the myLabel box
    
    firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f, 20.0f)];
        
    if (firstLabel != nil){
        firstLabel.backgroundColor = [UIColor greenColor];
        firstLabel.text = @"This is myLabel";
        firstLabel.textAlignment = UITextAlignmentCenter;
    }
    
    secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 200.0f, 20.0f)];
    
    if(secondLabel != nil){
        secondLabel.backgroundColor = [UIColor greenColor];
        secondLabel.text = @"This is myLabel";
        secondLabel.textAlignment = UITextAlignmentCenter;
    }
    
    thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 200.0f, 20.0f)];
    
    if(thirdLabel != nil){
        thirdLabel.backgroundColor = [UIColor greenColor];
        thirdLabel.text = @"This is myLabel";
        thirdLabel.textAlignment = UITextAlignmentCenter;
    }
    
    forthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 200.0f, 20.0f)];
    
    if(forthLabel != nil){
        forthLabel.backgroundColor = [UIColor greenColor];
        forthLabel.text = @"This is myLabel";
        forthLabel.textAlignment = UITextAlignmentCenter;
    }
    fifthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 200.0f, 20.0f)];
    
    if(fifthLabel != nil){
        fifthLabel.backgroundColor = [UIColor greenColor];
        fifthLabel.text = @"This is myLabel";
        fifthLabel.textAlignment = UITextAlignmentCenter;
    }
    
    sixthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 160.0f, 200.0f, 20.0f)];
    
    if(sixthLabel != nil){
        sixthLabel.backgroundColor = [UIColor greenColor];
        sixthLabel.text = @"This is myLabel";
        sixthLabel.textAlignment = UITextAlignmentCenter;
    }
    
    seventhLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 190.0f, 200.0f, 20.0f)];
    
    if(seventhLabel != nil){
        seventhLabel.backgroundColor = [UIColor greenColor];
        seventhLabel.text = @"This is myLabel";
        seventhLabel.textAlignment = UITextAlignmentCenter;
    }
    
    
//<------------------------ this portion will be to make the labels visible
    
    // makes myLabel a sibling of view
    [self.view addSubview:firstLabel];
    [self.view addSubview:secondLabel];
    [self.view addSubview:thirdLabel];
    [self.view addSubview:forthLabel];
    [self.view addSubview:fifthLabel];
    [self.view addSubview:sixthLabel];
    [self.view addSubview:seventhLabel];
    
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
