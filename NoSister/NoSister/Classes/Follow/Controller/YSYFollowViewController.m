//
//  YSYFollowViewController.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "YSYFollowViewController.h"
#import "UIBarButtonItem+YSYExtension.h"

@interface YSYFollowViewController ()

@end

@implementation YSYFollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = YSYRandomColor;
    self.navigationItem.title = @"关注";
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" hlightedImage:@"friendsRecommentIcon-click" action:@selector(clickAction) target:self];
}

- (void)clickAction
{
    YSYFuncLog
}

@end
