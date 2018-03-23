//
//  AppDelegate.m
//  DES3Demo
//
//  Created by lichanglai on 2018/3/23.
//  Copyright © 2018年 lichanglai. All rights reserved.
//

#import "AppDelegate.h"
#import "DES3Util.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


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
    NSString *encode = [DES3Util encrypt:text];
    NSLog(@"encode:%@",encode);
    NSString *decode = [DES3Util decrypt:encode];
    NSLog(@"decode:%@",decode);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
