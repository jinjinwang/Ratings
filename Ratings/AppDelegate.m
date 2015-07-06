//
//  AppDelegate.m
//  Ratings
//
//  Created by jinjinwang on 15-6-23.
//  Copyright (c) 2015年 ___FULLUSERNAME___. All rights reserved.
//

#import "AppDelegate.h"
#import "Player.h"
#import "PlayersViewController.h"

@implementation AppDelegate
{
    NSMutableArray* _players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // 在App Delegate 中你需要为PlayersViewController的成员变量数组创建一些测试的Player 对象，并且把它分配给PlayersViewController的 players 属性。
    _players = [NSMutableArray arrayWithCapacity:20];
    Player* player = [[Player alloc] init];
    player.name = @"Bill Evans";
    player.game = @"Tic-Tac-Toe";
    player.rating = 4;
    [_players addObject:player];
    
    player = [[Player alloc] init];
    player.name = @"Oscar Peterson";
    player.game = @"Spin the Bottle";
    player.rating = 5;
    [_players addObject:player];
    
    player = [[Player alloc] init];
    player.name = @"Dave Brubeck";
    player.game = @"Texas Hold’em Poker";
    player.rating = 2;
    [_players addObject:player];
    
    // 获取顶层的视图控制器， 这里是UITabBarController
    UITabBarController* tabBarController = (UITabBarController*)self.window.rootViewController;
    // 在第一个tab中，PlayersViewController位于navigation controller
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    // 然后获取它的root view controller， 这里是PlayersViewController
    PlayersViewController *playersViewController = [navigationController viewControllers][0];
    // 把 _players array 分配给PlayersViewController 的 players property
    // 那样它才能把这个数组作为它的data source
    playersViewController.players = _players;
    
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
