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
    title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 20.0f)];
        
    if (title != nil){
        title.backgroundColor = [UIColor greenColor];
        title.text = @"Congo";
        title.textAlignment = UITextAlignmentCenter;
    }
    
    author = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 60.0f, 20.0f)];
    
    if(author != nil){
        author.backgroundColor = [UIColor yellowColor];
        author.text = @"Author: ";
        author.textAlignment = UITextAlignmentRight;
    }
    
    nameOfAuthor = [[UILabel alloc] initWithFrame:CGRectMake(80.0f, 40.0f, 230.0f, 20.0f)];
    
    if(nameOfAuthor != nil){
        nameOfAuthor.backgroundColor = [UIColor colorWithRed:0.3 green:0.7 blue:1.0 alpha:0.9];
        nameOfAuthor.text = @"Micheal Crichton";
        nameOfAuthor.textAlignment = UITextAlignmentLeft;
    }
    
    publisher = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 100.0f, 20.0f)];
    
    if(publisher != nil){
        publisher.backgroundColor = [UIColor orangeColor];
        publisher.text = @"Published: ";
        publisher.textAlignment = UITextAlignmentRight;
    }
    nameOfPublisher = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 70.0f, 190.0f, 20.0f)];
    
    if(nameOfPublisher != nil){
        nameOfPublisher.backgroundColor = [UIColor brownColor];
        nameOfPublisher.text = @"Knopf 1980";
        nameOfPublisher.textAlignment = UITextAlignmentLeft;
    }
    
    summory = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 20.0f)];
    
    if(summory != nil){
        summory.backgroundColor = [UIColor whiteColor];
        summory.text = @"Summory";
        summory.textAlignment = UITextAlignmentCenter;
    }
    
    // this label will span over multiple lines and include the summory of the book.
    summoryBody = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 300.0f, 200.0f)];
    
    if(summoryBody != nil){
        summoryBody.backgroundColor = [UIColor colorWithRed:1.0 green:0.2 blue:1.0 alpha:1.0];
        summoryBody.text = @"This Book by Micheal Crichton is about an expedition to the Congo with a sign language speaking Gorilla named Amy.  This expedition is in search of the lost city of Zinj and diamonds.  Danger insues when the group discovers a new breed of aggressive Gorillas bred to protect the city!";
        summoryBody.textAlignment = UITextAlignmentCenter;
        summoryBody.numberOfLines = 10;
    }
    
    listLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 340.0f, 300.0f, 20.0f)];
    
    if(listLabel != nil){
        listLabel.backgroundColor = [UIColor colorWithRed:0.6 green:0.8 blue:0.7 alpha:0.9];
        listLabel.text = @"List of items";
        listLabel.textAlignment = UITextAlignmentLeft;
    }
    
    
//<----------------------------- creation of my NSArray for my keywords ----------------------------------------->
    // creation of my topicsOfBookArray that hold the actual topics
    NSArray *topicsOfBookArray = [[NSArray alloc] initWithObjects:@"Gorilla", @"Gems", @"Expedition", @"Science", @"Amy", nil];
    
    // created a mutableString to hold all of my array elements
    NSMutableString *newMutableString = [[NSMutableString alloc] init];
    
    // cycle through those elements and append them to newMutableString
    for(int i = 0; i < 5; i++){
        [newMutableString appendFormat:(@"%@, "), [topicsOfBookArray objectAtIndex:i]];
    }
    
//<------------------------------- end of NSArray stuff ---------------------------------------------------------->
    
    // my NSArray label
    listItems = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 370.0f, 300.0f, 40.0f)];
    
    if(listItems != nil){
        listItems.backgroundColor = [UIColor grayColor];
        listItems.text = newMutableString;
        listItems.textAlignment = UITextAlignmentCenter;
        listItems.numberOfLines = 3;
    }
    
//<------------------------ this portion will be to make the labels visible ------------------------------------------>
    
    // makes myLabel a sibling of view
    [self.view addSubview:title];
    [self.view addSubview:author];
    [self.view addSubview:nameOfAuthor];
    [self.view addSubview:publisher];
    [self.view addSubview:nameOfPublisher];
    [self.view addSubview:summory];
    [self.view addSubview:summoryBody];
    [self.view addSubview:listLabel];
    [self.view addSubview:listItems];
    

    
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
