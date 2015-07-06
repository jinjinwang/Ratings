//
//  Player.h
//  Ratings
//
//  Created by jinjinwang on 15-6-23.
//  Copyright (c) 2015年 jinjinwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *name; // 玩家名字
@property (nonatomic, copy) NSString *game; // 游戏名字
@property (nonatomic, assign) int rating;   // 他游戏的评级（1-5星）

@end
