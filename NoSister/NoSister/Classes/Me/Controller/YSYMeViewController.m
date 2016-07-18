//
//  YSYMeViewController.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "YSYMeViewController.h"
#import "UIBarButtonItem+YSYExtension.h"


@interface YSYMeViewController ()

@end

@implementation YSYMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = YSYRandomColor;
    self.navigationItem.title = @"我的";
    
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" hlightedImage:@"mine-setting-icon-click" action:@selector(settingClick) target:self];
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" hlightedImage:@"mine-moon-icon-click" action:@selector(moonClick) target:self];
     self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
}

- (void)moonClick
{
    YSYFuncLog
}

- (void)settingClick
{
    YSYFuncLog
    UIViewController *viewContrller = [[UIViewController alloc] init];
    viewContrller.view.backgroundColor = YSYRandomColor;
    viewContrller.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:viewContrller animated:YES];
}

@end
