//
//  AppDelegate.m
//  testApp
//
//  Created by Cory Green on 8/28/12.
//  Copyright (c) 2012 Cory Green. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // declaring my variables
    float number = 10.01f;
    float yetAnotheNumber = 78.90f;
    int anotherNumber = 23;
    
    BOOL thisIsEitherYesOrNo = YES;
    
    
    // this outputs the value of number with 2 decimal places
    NSLog(@"Here is the value of number represented as a float : %.2f", number);
    
    // casting the number float into a integer value
    NSLog(@"Here is the value of number represented as an integer : %d", (int)number);
    
    
    // proving my mastery in boolean statements!
    
    // if statement goes like this :
    // if anotherNumber does not equal 23 or yetAnotherNumber does not equal 78.90 then output both numbers are wrong
    if((anotherNumber != 23) || (yetAnotheNumber != 78.90f)){
        NSLog(@"Both numbers are wrong");
    }
    else{
        NSLog(@"Both numbers are correct");
    }
    
    // if statement goes like this:
    // if anotherNumber does equal 23 and thisIsEitherYesOrNo does equal YES then output text
    if((anotherNumber == 23) && (thisIsEitherYesOrNo == YES)){
        NSLog(@"Another number does equal 23 and this is either yes or no is in fact yes");
    }
    else{
        NSLog(@"This is false...");
    }
    
    // using a for loop to loop through an NSLog output 10 times.
    for(int i = 0; i < 10; i++){
        NSLog(@"hellooooooooo.....");
    }
    
    // using a while loop
    int x = 0;
    while (x < 10) {
        NSLog(@"This is inside a while loop");
        x++;
    }
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
