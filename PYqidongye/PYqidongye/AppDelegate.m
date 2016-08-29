//
//  AppDelegate.m
//  PYqidongye
//
//  Created by Apple on 16/7/28.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic, strong)UIImageView *imageViewS;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    动态启动页
    [self.window makeKeyAndVisible];
    self.imageViewS = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.imageViewS setImage:[UIImage imageNamed:@"1.jpg"]];
    [self.window addSubview:self.imageViewS];
    
    //添加动画
    [UIImageView beginAnimations:nil context:nil];
    [UIImageView setAnimationDuration:3.5];//持续时间
    self.imageViewS.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.5, 1.5);//放大比例
    [UIImageView commitAnimations];
    
    //关闭启动图
    [self performSelector:@selector(showPYguanbi) withObject:nil afterDelay:3.1];
    return YES;
}
- (void)showPYguanbi {
    [self.imageViewS removeFromSuperview];
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
