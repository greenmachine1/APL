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
    
    
//<---------------------- this portion will be used to define the lables-------------------------------------------->
    
        // creating a label which is defined in my ViewController.h file
        // this denotes the location and size of the myLabel box
        // CGRectMake(10.0f, 10.0f, 300.0f, 20.0f = CGRectMake(x, y, x, y) (x, y) - location, (x, y) - size
    firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 20.0f)];
        
    if (firstLabel != nil){
        firstLabel.backgroundColor = [UIColor greenColor];
        firstLabel.text = @"Congo";
        firstLabel.textAlignment = UITextAlignmentCenter;
    }
    
    secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 60.0f, 20.0f)];
    
    if(secondLabel != nil){
        secondLabel.backgroundColor = [UIColor greenColor];
        secondLabel.text = @"Author: ";
        secondLabel.textAlignment = UITextAlignmentRight;
    }
    
    thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(80.0f, 40.0f, 230.0f, 20.0f)];
    
    if(thirdLabel != nil){
        thirdLabel.backgroundColor = [UIColor greenColor];
        thirdLabel.text = @"Micheal Crichton";
        thirdLabel.textAlignment = UITextAlignmentLeft;
    }
    
    forthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 100.0f, 20.0f)];
    
    if(forthLabel != nil){
        forthLabel.backgroundColor = [UIColor greenColor];
        forthLabel.text = @"Published: ";
        forthLabel.textAlignment = UITextAlignmentRight;
    }
    fifthLabel = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 70.0f, 190.0f, 20.0f)];
    
    if(fifthLabel != nil){
        fifthLabel.backgroundColor = [UIColor greenColor];
        fifthLabel.text = @"Knopf";
        fifthLabel.textAlignment = UITextAlignmentLeft;
    }
    
    sixthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 20.0f)];
    
    if(sixthLabel != nil){
        sixthLabel.backgroundColor = [UIColor greenColor];
        sixthLabel.text = @"Summory";
        sixthLabel.textAlignment = UITextAlignmentCenter;
    }
    
    // this label will span over multiple lines and include the summory of the book.
    seventhLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 300.0f, 200.0f)];
    
    if(seventhLabel != nil){
        seventhLabel.backgroundColor = [UIColor greenColor];
        seventhLabel.text = @"This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory";
        seventhLabel.textAlignment = UITextAlignmentCenter;
        seventhLabel.numberOfLines = 10;
    }
    
    eigthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 340.0f, 300.0f, 20.0f)];
    
    if(eigthLabel != nil){
        eigthLabel.backgroundColor = [UIColor greenColor];
        eigthLabel.text = @"Key words in this book";
        eigthLabel.textAlignment = UITextAlignmentLeft;
    }
    
//<----------------------------- creation of my NSArray for my keywords ----------------------------------------->
    // creation of my topicsOfBookArray that hold the actual topics
    NSArray *topicsOfBookArray = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    
    for(int i = 0; i < 5; i++){
        NSLog(@"%@", [topicsOfBookArray objectAtIndex:i]);
    }
    
    // making a mutable array that can hold 5 elements.
    NSMutableString *topicsOfBookString = [[NSMutableString alloc] initWithString:@" ,"];
    
   //[topicsOfBookString appendString:]
   
    
//<------------------------------- end of NSArray stuff ---------------------------------------------------------->
    ninthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 340.0f, 300.0f, 20.0f)];
    
    if(ninthLabel != nil){
        ninthLabel.backgroundColor = [UIColor greenColor];
        ninthLabel.text = @"Key words in this book";
        ninthLabel.textAlignment = UITextAlignmentLeft;
    }
    
//<------------------------ this portion will be to make the labels visible ------------------------------------------>
    
    // makes myLabel a sibling of view
    [self.view addSubview:firstLabel];
    [self.view addSubview:secondLabel];
    [self.view addSubview:thirdLabel];
    [self.view addSubview:forthLabel];
    [self.view addSubview:fifthLabel];
    [self.view addSubview:sixthLabel];
    [self.view addSubview:seventhLabel];
    [self.view addSubview:eigthLabel];
    
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
