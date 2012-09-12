//
//  ViewController.h
//  Week_3_project
//
//  Created by Cory Green on 9/9/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
}

-(int)add:(int)first second:(int)second;

-(BOOL)compare:(NSInteger *)firstNumber secondNumber:(NSInteger *)secondNumber;

-(NSString*)append:(NSString*)firstString second:(NSString*)second;

-(void)displayAlertWithString:(NSString *)string secondString:(NSString *)secondString;

@end
