//
//  AppDelegate.m
//  MVVideoPlayer
//
//  Created by apple on 13-5-30.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "VideoViewController.h"


@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    
 
// http://3g.118100.cn/mvPlay.do?type=2&url=http%3A%2F%2Fv.qq.com%2Fcover%2Fr%2Frtlcx4qfw5oas30.html%3Fvid%3Di00122vhx66
// http://3g.118100.cn/mvPlay.do?type=2&url=http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XNTQzNTQ1NjA4.html%3Ff%3D19173059
// http://3g.118100.cn/mvPlay.do?type=2&url=http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XNTQzNTQ1NjA4.html%3Ff%3D19173059
    
    
    UINavigationController *nc = [[UINavigationController alloc] init];
    VideoViewController *vc = [[VideoViewController alloc] initWithVideoURL:@"http://3g.118100.cn/mvPlay.do?type=2&url=http%3A%2F%2Fwww.yinyuetai.com%2Fvideo%2F664350"];
    [nc pushViewController:vc animated:YES];
    [vc release];
    self.window.rootViewController = nc;
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
