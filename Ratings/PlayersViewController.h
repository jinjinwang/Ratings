//
//  PlayersViewController.h
//  Ratings
//
//  Created by jinjinwang on 15-6-23.
//  Copyright (c) 2015年 jinjinwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayersViewController : UITableViewController

// 该数组将会包含你的应用中的主要数据模型，一个数组包含 Player 对象。
@property (nonatomic, strong) NSMutableArray *players; 

@end
