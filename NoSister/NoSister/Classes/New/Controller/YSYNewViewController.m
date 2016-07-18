//
//  YSYNewViewController.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "YSYNewViewController.h"
#import "UIBarButtonItem+YSYExtension.h"


@interface YSYNewViewController ()

@end

@implementation YSYNewViewController

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
