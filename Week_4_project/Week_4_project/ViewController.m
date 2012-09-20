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
        
        // assigning my loginbutton the tag of 0 
        loginButton.tag = 0;
        
        // setting my default login title for this button
        [loginButton setTitle:@"login" forState:UIControlStateNormal];
        
    
        
        // adding a target for what happens when you click on this button
        // onclick gets the loginButton.tag info passed in
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:loginButton];
    }
    
    // making a center text field for all to see! (note made this a global variable also)
    centerTextField = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 50.0f)];
    if (centerTextField != nil){
        centerTextField.backgroundColor = [UIColor lightGrayColor];
        centerTextField.textColor = [UIColor blueColor];
        centerTextField.text = @"Username";
        centerTextField.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:centerTextField];
    }
// ----------------------------------- end of top of application ---------------------------------------------->
// ----------------------------------start of middle of application ------------------------------------------->
    
    
    UIButton *showDateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(showDateButton != nil){
        
        showDateButton.frame = CGRectMake(90.0f, 200.0f, 120.0f, 40.0f);
        
        // assigning my showDateButton the tag of 1
        showDateButton.tag = 1;
        
        [showDateButton setTitle:@"Press for date" forState:UIControlStateNormal];
        
        // calling on the same onclick function but accessing different portions of that function
        // onclick gets the loginButton.tag info passed in
        [showDateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDateButton];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}




// my onclick event function
-(void)onClick:(UIButton *)button
{
    
    if(button.tag == 0){
        // making the onclick event register the user input
        NSString *userText = [userNameTextView text];
        if (userText.length != 0){
            
            // puts the users name into the centerTextField
            NSString *userOutputField = [[NSString alloc] initWithFormat:@"Welcome user: %@", userText];
            centerTextField.text = userOutputField;
        }
    
        // creates an alert view if the string is empty
        else if(userText.length == 0){
            UIAlertView *emptyAlert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Your username cannot be empty" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
            //reverts back to the original Username login
            centerTextField.text = @"Username";
            [emptyAlert show];
        }
    }
    
    if(button.tag == 1){
        UIAlertView *dateTimeAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:@"This will be populated" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        if(dateTimeAlert != nil){
            [dateTimeAlert show];
        }
        
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
