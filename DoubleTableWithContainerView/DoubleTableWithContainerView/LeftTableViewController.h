//
//  LeftTableViewController.h
//  DoubleTableWithContainerView
//
//  Created by 李欢欢 on 16/6/30.
//  Copyright © 2016年 Lihuanhuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftTableViewController : UITableViewController

@property (nonatomic, copy) void (^whenClick)(id data);
@end
