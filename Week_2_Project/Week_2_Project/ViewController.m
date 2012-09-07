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
        secondLabel.backgroundColor = [UIColor yellowColor];
        secondLabel.text = @"Author: ";
        secondLabel.textAlignment = UITextAlignmentRight;
    }
    
    thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(80.0f, 40.0f, 230.0f, 20.0f)];
    
    if(thirdLabel != nil){
        thirdLabel.backgroundColor = [UIColor colorWithRed:0.3 green:0.7 blue:1.0 alpha:0.9];
        thirdLabel.text = @"Micheal Crichton";
        thirdLabel.textAlignment = UITextAlignmentLeft;
    }
    
    forthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 100.0f, 20.0f)];
    
    if(forthLabel != nil){
        forthLabel.backgroundColor = [UIColor orangeColor];
        forthLabel.text = @"Published: ";
        forthLabel.textAlignment = UITextAlignmentRight;
    }
    fifthLabel = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 70.0f, 190.0f, 20.0f)];
    
    if(fifthLabel != nil){
        fifthLabel.backgroundColor = [UIColor brownColor];
        fifthLabel.text = @"Knopf 1980";
        fifthLabel.textAlignment = UITextAlignmentLeft;
    }
    
    sixthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 20.0f)];
    
    if(sixthLabel != nil){
        sixthLabel.backgroundColor = [UIColor whiteColor];
        sixthLabel.text = @"Summory";
        sixthLabel.textAlignment = UITextAlignmentCenter;
    }
    
    // this label will span over multiple lines and include the summory of the book.
    seventhLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 300.0f, 200.0f)];
    
    if(seventhLabel != nil){
        seventhLabel.backgroundColor = [UIColor colorWithRed:1.0 green:0.2 blue:1.0 alpha:1.0];
        seventhLabel.text = @"This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory This is the Summory";
        seventhLabel.textAlignment = UITextAlignmentCenter;
        seventhLabel.numberOfLines = 10;
    }
    
    eigthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 340.0f, 300.0f, 20.0f)];
    
    if(eigthLabel != nil){
        eigthLabel.backgroundColor = [UIColor colorWithRed:0.6 green:0.8 blue:0.7 alpha:0.9];
        eigthLabel.text = @"Key words in this book";
        eigthLabel.textAlignment = UITextAlignmentLeft;
    }
    
    
//<----------------------------- creation of my NSArray for my keywords ----------------------------------------->
    // creation of my topicsOfBookArray that hold the actual topics
    NSArray *topicsOfBookArray = [[NSArray alloc] initWithObjects:@"apes", @"gems", @"expedition", @"science", @"Amy", nil];
    
    // created a mutableString to hold all of my array elements
    NSMutableString *newMutableString = [[NSMutableString alloc] init];
    
    // cycle through those elements and append them to newMutableString
    for(int i = 0; i < 5; i++){
        [newMutableString appendFormat:(@"%@, "), [topicsOfBookArray objectAtIndex:i]];
    }
    
//<------------------------------- end of NSArray stuff ---------------------------------------------------------->
    ninthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 370.0f, 300.0f, 20.0f)];
    
    if(ninthLabel != nil){
        ninthLabel.backgroundColor = [UIColor grayColor];
        ninthLabel.text = newMutableString;
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
    [self.view addSubview:ninthLabel];
    [self.view addSubview:tenthLabel];

    
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
