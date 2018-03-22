//
//  AppDelegate.m
//  AES
//
//  Created by lichanglai on 16/7/14.
//  Copyright © 2016年 lichanglai. All rights reserved.
//

#import "AppDelegate.h"
#import "AES.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//http://www.cnblogs.com/lianghui66/archive/2013/03/07/2948494.html

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *text = @"///....///";
//    NSLog(@"text:%@",text);
//    NSData *data = [text dataUsingEncoding:NSUTF8StringEncoding];
//    NSLog(@"data:%@",data);
//    NSString *encode2 = [AES encryptData:data];
//    NSLog(@"encode:%@",encode2);
//    NSData *decode2 = [AES decryptData:encode2];
//    NSString *decodeString = [[NSString alloc]initWithData:decode2 encoding:NSUTF8StringEncoding];
//    NSLog(@"decodeData:%@",decode2);
//    NSLog(@"decodeString:%@",decodeString);
    
    NSLog(@"text:%@",text);
    NSString *encode = [AES encrypt:text];
    NSLog(@"encode:%@",encode);
    NSString *decode = [AES decrypt:encode];
    NSLog(@"decode:%@",decode);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
