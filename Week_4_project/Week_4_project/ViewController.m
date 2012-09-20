//
//  ViewController.m
//  Week_4_project
//
//  Created by Cory Green on 9/18/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    //<----------------------------------------- start of my code! ------------------------------------------------>
    
    // assigning my background color to be white
    self.view.backgroundColor = [UIColor whiteColor];
    
    // making a label with the username input
    UILabel *userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 20.0f)];
    if (userNameLabel != nil){
        userNameLabel.text = @"Username";
        userNameLabel.textAlignment = UITextAlignmentLeft;
    }
    
    // making a user input box
    UITextField *userNameTextView = [[UITextField alloc] initWithFrame:CGRectMake(120.0f, 10.0f, 190.0f, 30.0f)];
    if (userNameTextView != nil){
        userNameTextView.borderStyle = UITextBorderStyleBezel;
        [self.view addSubview:userNameTextView];
    
    }
    
    // making my login button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil){
        loginButton.frame = CGRectMake(260.0f, 50.0f, 50.0f, 20.0f);
        [self.view addSubview:loginButton];
    }
    
    UILabel *centerTextField = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 50.0f)];
    if (centerTextField != nil){
        centerTextField.backgroundColor = [UIColor lightGrayColor];
         centerTextField.textColor = [UIColor blueColor];
        centerTextField.text = @"Username";
        centerTextField.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:centerTextField];
    [self.view addSubview:userNameLabel];
    
/*
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(button != nil){
        
        button.frame = CGRectMake(10.0f, 10.0f, 100.0f, 50.0f);
        [button setTitle:@"Push me" forState:UIControlStateNormal];
        
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
*/    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



/*
-(void)onClick
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"You hit me!" message:@"You hit me!!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    if (alertView != nil){
        [alertView show];
    }
}
*/


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
