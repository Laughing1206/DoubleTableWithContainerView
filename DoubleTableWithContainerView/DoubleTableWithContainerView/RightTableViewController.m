//
//  RightTableViewController.m
//  DoubleTableWithContainerView
//
//  Created by 李欢欢 on 16/6/30.
//  Copyright © 2016年 Lihuanhuan. All rights reserved.
//

#import "RightTableViewController.h"
#import "LeftTableViewController.h"
@interface RightTableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@end

@implementation RightTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.label1.text = @"我是欢欢的大房";
    self.label2.text = @"我是欢欢的二房";
    self.label3.text = @"我是欢欢的三房";
    self.label4.text = @"我是欢欢的四房";
    self.label5.text = @"我是欢欢的五房";
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setupLabels:) name:@"DoubleTableWithContainerView" object:nil];
}

- (void)setupLabels:(NSNotification *)notification
{
    if ( [notification.object isKindOfClass:[NSIndexPath class]] )
    {
        NSIndexPath *indexPath = notification.object;
        self.label1.text = [NSString stringWithFormat:@"我是欢欢%ld的大房",indexPath.row + 1];
        self.label2.text = [NSString stringWithFormat:@"我是欢欢%ld的二房",indexPath.row + 1];
        self.label3.text = [NSString stringWithFormat:@"我是欢欢%ld的三房",indexPath.row + 1];
        self.label4.text = [NSString stringWithFormat:@"我是欢欢%ld的四房",indexPath.row + 1];
        self.label5.text = [NSString stringWithFormat:@"我是欢欢%ld的五房",indexPath.row + 1];
    }
}
@end
