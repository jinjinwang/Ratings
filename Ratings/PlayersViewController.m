//
//  PlayersViewController.m
//  Ratings
//
//  Created by jinjinwang on 15-6-23.
//  Copyright (c) 2015年 jinjinwang. All rights reserved.
//

#import "PlayersViewController.h"
#import "Player.h"
#import "PlayerCell.h"

@interface PlayersViewController ()

@end

@implementation PlayersViewController

@synthesize players;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //方式1: 默认Table View Controller 会带一个空的cell. 点击它，设置 Attributes inspector 中的 Style 为 Subtitle. 这种方式设置标签的值
    // 获取cell
    // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    // Configure the cell...
    // Player *player = (self.players)[indexPath.row];
    // cell.textLabel.text = player.name;
    // cell.detailTextLabel.text = player.game;
    
    //方式2: 自定义cell时通过tag设置label
    // 获取cell
    // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    
    // Configure the cell...
    // Player *player = (self.players)[indexPath.row];
    // UILabel *nameLabel = (UILabel *)[cell viewWithTag:100];
    // nameLabel.text = player.name;
    
    // UILabel *gameLabel = (UILabel *)[cell viewWithTag:101];
    // gameLabel.text = player.game;
    
    // UIImageView *ratingImageView = (UIImageView *)[cell viewWithTag:102];
    // ratingImageView.image = [self imageForRating:player.rating];
    
    // 方式3: 自定义的tableviewcell 的子类，将table view cell的class设置为PlayerCell
    PlayerCell *cell = (PlayerCell *)[tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    Player *player = (self.players)[indexPath.row];
    cell.nameLabel.text = player.name;
    cell.gameLabel.text = player.game;
    cell.ratingImageView.image = [self imageForRating:player.rating];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (UIImage *)imageForRating:(int)rating
{
    switch (rating) {
        case 1: return [UIImage imageNamed:@"1StarSmall"];
        case 2: return [UIImage imageNamed:@"2StarsSmall"];
        case 3: return [UIImage imageNamed:@"3StarsSmall"];
        case 4: return [UIImage imageNamed:@"4StarsSmall"];
        case 5: return [UIImage imageNamed:@"5StarsSmall"];
    }
    return nil;
}

@end
