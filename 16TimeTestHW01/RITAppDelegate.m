//
//  RITAppDelegate.m
//  16TimeTestHW01
//
//  Created by Pronin Alexander on 17.02.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITStudent.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSInteger           studentsNumber  = 30;
    NSMutableArray*     students        = [NSMutableArray array];
    NSDate*             dateNow         = [NSDate date];
    NSCalendar*         calendar        = [NSCalendar currentCalendar];
    NSDateComponents*   dateCompontnts  = [[NSDateComponents alloc] init];
    
    for (int i = 0; i < studentsNumber; i++) {
        
        RITStudent*     student         = [RITStudent studentWithName:[NSString stringWithFormat:@"Student%02d", i + 1]];
        
        NSInteger       studentAge      = arc4random() % 35 + 16;
        
        // NSLog(@"studentAge: %d", studentAge);
        
        [dateCompontnts setYear: - studentAge];
        
        student.dateOFBirth             = [calendar
                                               dateByAddingComponents:dateCompontnts
                                               toDate:dateNow
                                               options:0];
        [students addObject:student];
    }
    
    for (RITStudent* student in students) {
        NSLog(@"%@", student);
    }
    
    return YES;
}

/*
 NSLog(@"calendarIdentifier: %@", [calendar calendarIdentifier]);
 NSLog(@"locale: %@", [calendar locale]);
 NSLog(@"timeZone: %@", [calendar timeZone]);
 NSLog(@"firstWeekday: %d", [calendar firstWeekday]);
 NSLog(@"minimumDaysInFirstWeek: %d", [calendar minimumDaysInFirstWeek]);
 */

/*
 This API returns a new NSDate object representing the date calculated by adding an amount of a specific component to a given date.
 The NSCalendarWrapComponents option specifies if the component should be incremented and wrap around to zero/one on overflow, and should not cause higher units to be incremented.
 - (NSDate *)dateByAddingUnit:(NSCalendarUnit)unit value:(NSInteger)value toDate:(NSDate *)date options:(NSCalendarOptions)options NS_AVAILABLE(10_9, __NSCALENDAR_COND_IOS_7_0);
 */

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
