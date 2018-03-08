//
//  AppDelegate.m
//  自定义返回按钮demo
//
//  Created by gzy on 2018/3/2.
//  Copyright © 2018年 GZY. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    //设置导航栏背景颜色
    [[UINavigationBar appearance] setBarTintColor:[UIColor redColor]];
    //设置导航栏左右按钮的着色
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //这种原来没问题，但是在iOS11更新后会出现错位和变小，只看到一点点，Xcode下面会打印出一堆，好像说是约束问题（可能的原因是iOS11系统在导航栏里面的布局和控件都变化了）
//    UIImage *backButtonImage = [[UIImage imageNamed:@"箭头left40x40.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 40, 0, 0) resizingMode:UIImageResizingModeTile];
//    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    //参考自定义文字部分
//    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(NSIntegerMin, NSIntegerMin) forBarMetrics:UIBarMetricsDefault];
    
    //自定义图片部分
//    [[UINavigationBar appearance] setBackIndicatorImage:[[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
//    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:firstVC];
    self.window.rootViewController = navi;
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
