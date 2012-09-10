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

-(int)myFunction;
-(int)add:(int)first second:(int)second;
-(NSString*)append:(NSString*)firstString secondString:(NSString*)secondString;
-(void)displayAlertWithString:(NSString *)string;

@end
