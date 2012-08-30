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
    

// come home from work and feed my dogs and cats
    
    // declaring my variables
    int numberOfCats = 3;
    int numberOfDogs = 2;
    int dogPills = 120;
    int numberOfDaysWorthOfPills = dogPills / 2;
    
    float amountOfMoneyWeHave = 2690.90f;
    BOOL myVote = YES;
    
// explaining my dog situation
    
    NSLog(@"My wife and I have an assortment of animals.  We have %d dogs and %d cats.", numberOfDogs, numberOfCats);
    NSLog(@"Every morning whenI wake up, I have to feed my dog Trouble.");
    NSLog(@"He suffers from seizures so I have to feed him a pill to help relieve the symptoms of that.");
    NSLog(@"So, I have to check his pills every morning to make sure he has enough.");
    NSLog(@"He takes 2 a day and according to the remaining supply, he has enough for %d days", numberOfDaysWorthOfPills);
    
// what to do if I run out of pills
    // usage of if statements
    if (dogPills == 2){
        NSLog(@"I currently have enough pills for another day for my dog.");
    }
    else if (dogPills > 14){
        NSLog(@"I have enough for a weeks worth of pills at least for Trouble.");
    }
    else{
        NSLog(@"I have ran out of pills!  I have to get more!");
    }
    
// later that evening!
    // example of integer usage and casting
    
    NSLog(@"Later that evening, my wife and I go through our finances to see if we have enough money to go on a cruise");
    NSLog(@"The amount we have is $%.2f but my wife told me to just round off the cents! So we have $%d", amountOfMoneyWeHave, (int)amountOfMoneyWeHave);
    
    // example of if statement with boolean logic
    
    NSLog(@"She asks to go to the Bahamas");
    NSLog(@"And I say : ");
    
    // using boolean logic in my if statements
    
    if((myVote == YES)  && (amountOfMoneyWeHave > 3500.00f)){
        NSLog(@"We have enough money, so yes! Lets go!");
    }
    
    else{
        NSLog(@"Sorry hunny, we dont have enough to go, lets pick somewhere else(sad face in real life).");
    }
    
    // second choice for a cruise
    
    NSLog(@"Well, what about the Caribbean?");
    
    if((myVote == NO) || ((amountOfMoneyWeHave <= 3000.00f) && (amountOfMoneyWeHave >= 2500.00f))){
        NSLog(@"Its not my first vote, but what the heck!  Lets go there!");
    }
    else if(amountOfMoneyWeHave <= 2500.00f){
        NSLog(@"We dont have enough money even for this one!  So no!");
    }
    else{
        NSLog(@"I dont want to go anywhere!");
    }
    
    // my loops section
    
    NSLog(@"Later still, we go to sleep.  Our cat Scooter brings up toys from the downstairs.");
    NSLog(@"Everytime he brings a new toy into our room he meows...");
    
    // using a for statement, output how many times he meows!
    
    for(int x = 0; x < 5; x++){
        NSLog(@"Meow!");
    }
    
    // using a while loop, I tell him to shut up!!
    
    NSLog(@"Everytime he comes into the room, I tell him ");
    int o = 0;
    while (o < 5){
        NSLog(@"Shut up!!");
        o++;
    }
    NSLog(@"For everytime he brings in a toy and meows");
    
    // Using a nested loop,  doesnt really pertain to what my story involves but for things like drawing tables
    // and filling in ... tables, I can see this being useful. :D
    
    for(int a = 1; a < 5; a++){
        NSLog(@"%d", a);
        for(int b = 1; b < 5; b++){
            NSLog(@"%d", b);
        }
    }
    
    
    

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
