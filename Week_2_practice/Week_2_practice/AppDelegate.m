//
//  AppDelegate.m
//  Week_2_practice
//
//  Created by Cory Green on 9/1/12.
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
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//<------------------------------------------start of my code------------------------------------------------>
    
    // example of how to make an object
    // allocating and initializing the newThingy object with the string @"hello"!
    NSString *newThingy = [[NSString alloc] initWithString:@"hello"];
   
    
    // calling on the method length within the NSString object.
    int lengthOfString = [newThingy length];
    NSLog(@"%d", lengthOfString);
    
  
    // this actually works so long as I dont step through it ... its strange...
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@"More than just hello."];
    
    // this will actually insert the words stringThingy into mutableString at index 2
    [mutableString insertString:@"stringThingy" atIndex:2];
    
    // making object of lower case and converting it to upper case
    NSString *lowerCaseString = [[NSString alloc] initWithString:@"hello"];
    NSString *upperCaseString = [lowerCaseString uppercaseString];
    
    // using the initWithFormat, Im able to use strings that have variables
    NSString *newStringObject = [[NSString alloc] initWithFormat: @"Inserted text with variable %d", 4];
    
    
    // using NSLog to mix an object string with a regular NSLog string
    NSLog(@"This is the static string with %@", newStringObject);
    
   
    
//<--------------------------------------------end of my code------------------------------------------------>
    
    
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
