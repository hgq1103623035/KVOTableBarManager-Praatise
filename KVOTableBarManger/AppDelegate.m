//
//  AppDelegate.m
//  KVOTableBarManger
//
//  Created by mac on 16/2/19.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    UITabBarController *tabCtr = [[UITabBarController alloc]init];
    
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    firstVC.view.backgroundColor = [UIColor cyanColor];
    firstVC.tabBarItem.title = @"第一界面";
    UITabBarItem *item1 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:1];
    firstVC.tabBarItem = item1;
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:firstVC];
    
    
    SecondViewController *secVC = [[SecondViewController alloc]init];
    secVC.view.backgroundColor = [UIColor redColor];
    secVC.tabBarItem.title = @"第二界面";
    UITabBarItem *item2 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:2];
    secVC.tabBarItem = item2;
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:secVC];
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    thirdVC.view.backgroundColor = [UIColor yellowColor];
    thirdVC.tabBarItem.title = @"第三界面";
    UITabBarItem *item3 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:3];
    thirdVC.tabBarItem = item3;
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:thirdVC];
    
    ForthViewController *forthVC = [[ForthViewController alloc]init];
    forthVC.view.backgroundColor = [UIColor blueColor];
    forthVC.tabBarItem.title = @"第四界面";
    UITabBarItem *item4 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:4];
    forthVC.tabBarItem = item4;
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:forthVC];
    
    tabCtr.viewControllers = @[nav1,nav2,nav3,nav4];
    self.window.rootViewController = tabCtr;
    
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
