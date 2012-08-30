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
    
    
//<------------------------------------- Main start of program-------------------------------------------->
    
// need to come up with a story for all of this info
// come home from work and feed my dogs and cats
    
    // declaring my variables
    int numberOfCats = 3;
    int numberOfDogs = 2;
    int dogPills = 120;
    
    int numberOfDaysWorthOfPills = dogPills / 2;
    
    float amountOfCatFood = 0.33f;
    
    // explaining my dog situation
    NSLog(@"My wife and I have an assortment of animals.  We have %d dogs and %d cats.", numberOfDogs, numberOfCats);
    NSLog(@"Every morning whenI wake up, I have to feed my dog Trouble.");
    NSLog(@"He suffers from seizures so I have to feed him a pill to help relieve the symptoms of that.");
    NSLog(@"So, I have to check his pills every morning to make sure he has enough.");
    NSLog(@"He takes 2 a day and according to the remaining supply, he has enough for %d days", numberOfDaysWorthOfPills);
    
    // what to do if I run out of pills
    if (dogPills == 2){
        NSLog(@"I currently have enough pills for another day for my dog.");
    }
    else if (dogPills > 14){
        NSLog(@"I have enough for a weeks worth of pills for Trouble.");
    }
    else{
        NSLog(@"I have ran out of pills!  I have to get more!");
    }
    
    NSLog(@"Our cats only eat at night, the amount of food I give them is %f of one full bowl.", amountOfCatFood);
    
    
    
    
    
    
    
    
    
    
    
/*
    
// declaring my variables
    float number = 10.01f;
    float yetAnotherNumber = 78.90f;
    int anotherNumber = 23;
    
// declaring boolean type
    BOOL thisIsEitherYesOrNo = YES;
    
// this outputs the value of number with 2 decimal places(%.2f)
    NSLog(@"Here is the value of number represented as a float : %.2f", number);
    
// casting the number float into a integer value (int)number
    NSLog(@"Here is the value of number represented as an integer : %d", (int)number);
    
    
// using if, else if, and else statements as well as boolean logic
    
    if ((anotherNumber != 23) && (yetAnotherNumber == 78.90f)){
        NSLog(@"The two number values are correct");
    }
    else if((anotherNumber > 23) || (yetAnotherNumber < 78.90f)){
        NSLog(@"Both numbers are higher than they need to be");
    }
    else if((anotherNumber == 23) && (thisIsEitherYesOrNo == YES)){
        NSLog(@"The anotherNumber variable is 23 and thisIsEitherYesOrNo is YES");
    }
    
    
// using a for loop to loop through an NSLog output 10 times.
    for(int i = 0; i < 10; i++){
        NSLog(@"hellooooooooo.....");
    }
    
// using a while loop
    int x = 0;
    while (x < 10) {
        NSLog(@"This is inside a while loop");
        // integer x is incremented 1 time each time the loop goes through.
        x++;
    }
    
// nested loop
    for(int a = 0; a < 5; a++){
        NSLog(@"variable a = %d", a);
        
        // inner loop
        for(int l = 0; l < 5; l++){
            NSLog(@"variable x = %d", l);
        }
    }
 */
//<--------------------------------------------- end -------------------------------------------------->
    
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
