//
//  PlayerCell.h
//  Ratings
//
//  Created by jinjinwang on 15-6-23.
//  Copyright (c) 2015年 jinjinwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;

@end
