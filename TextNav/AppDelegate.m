//
//  AppDelegate.m
//  TextNav
//
//  Created by 彭依汉 on 16/5/11.
//  Copyright © 2016年 PengEhan. All rights reserved.
//

#import "AppDelegate.h"
#import "HiddenBaseViewController.h"
#include "HansNavController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.navController = [[HansNavController alloc]initWithRootViewController:[HiddenBaseViewController new]];
    self.window.rootViewController = self.navController;
    
    [self.window makeKeyAndVisible];
    
    
    
    //获得导航栏外观代理类
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    
    //并不能直接设置，这里要判断版本，ios7执行会报错
    //[UINavigationBar setTranslucent:NO];
    
    //这里是设置导航栏的背景色
    [navigationBarAppearance setBarTintColor:[UIColor orangeColor]];
    
    //这里设置导航栏返回按钮字体的颜色
    navigationBarAppearance.tintColor = [UIColor whiteColor];
    
    //设置导航栏中间title的字体和颜色
    navigationBarAppearance.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:               [UIColor whiteColor],
                                                   NSForegroundColorAttributeName,
                                                   [UIFont boldSystemFontOfSize:17],
                                                   NSFontAttributeName,
                                                   nil];
    
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
