//
//  LeftTableViewController.m
//  DoubleTableWithContainerView
//
//  Created by 李欢欢 on 16/6/30.
//  Copyright © 2016年 Lihuanhuan. All rights reserved.
//

#import "LeftTableViewController.h"

@interface LeftTableViewController ()


@end

@implementation LeftTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.tableView.layer.borderWidth = 1.f;
    self.tableView.layer.masksToBounds = YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"DoubleTableWithContainerView" object:indexPath];
}

@end
