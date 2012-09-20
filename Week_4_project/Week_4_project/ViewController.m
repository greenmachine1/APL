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

// ------------------------------Very top of my application ------------------------------------------------------------->
    
    // assigning my background color to be white
    self.view.backgroundColor = [UIColor whiteColor];
    
    // making a label with the username input
    UILabel *userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 20.0f)];
    if (userNameLabel != nil){
        userNameLabel.text = @"Username";
        userNameLabel.textAlignment = UITextAlignmentLeft;
        [self.view addSubview:userNameLabel];
    }
    
    // making a user input box (note this is a global variable)
    userNameTextView = [[UITextField alloc] initWithFrame:CGRectMake(120.0f, 10.0f, 190.0f, 30.0f)];
    if (userNameTextView != nil){
        userNameTextView.borderStyle = UITextBorderStyleBezel;
        [self.view addSubview:userNameTextView];
    
    }
    
    // making my login button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil){
        loginButton.frame = CGRectMake(240.0f, 50.0f, 70.0f, 20.0f);
        
        // setting my default login title for this button
        [loginButton setTitle:@"login" forState:UIControlStateNormal];
        
    
        
        // adding a target for what happens when you click on this button
        [loginButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:loginButton];
    }
    
    // making a center text field for all to see!
    UILabel *centerTextField = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 50.0f)];
    if (centerTextField != nil){
        centerTextField.backgroundColor = [UIColor lightGrayColor];
         centerTextField.textColor = [UIColor blueColor];
        centerTextField.text = @"Username";
        centerTextField.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:centerTextField];
    }

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}




-(void)onClick
{
    // making the onclick event register the user input
    NSString *userText = [userNameTextView text];
    if (userText != nil){
        NSLog(userText);
    }
    
    // creates an alert view if the string is empty
    else{
        UIAlertView *emptyAlert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Your username cannot be empty" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [emptyAlert show];
    }
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
