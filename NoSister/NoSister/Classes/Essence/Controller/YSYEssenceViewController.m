//
//  YSYEssenceViewController.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "YSYEssenceViewController.h"
#import "UIBarButtonItem+YSYExtension.h"

@interface YSYEssenceViewController ()

@end

@implementation YSYEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = YSYRandomColor;

    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.titleView = imageView;
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" hlightedImage:@"MainTagSubIconClick" action:@selector(clickAction) target:self];
}


- (void)clickAction
{
    YSYFuncLog
}

@end
