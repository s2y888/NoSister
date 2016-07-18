//
//  YSYNavigationViewController.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "YSYNavigationViewController.h"

@interface YSYNavigationViewController ()<UIGestureRecognizerDelegate>

@end

@implementation YSYNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.interactivePopGestureRecognizer.delegate = self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(clickbackAction) forControlEvents:UIControlEventTouchUpInside];
//        [button setFrame:CGRectMake(0, 0, 50, 40)];
        [button sizeToFit];
        [button setContentEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)clickbackAction
{
    [self popViewControllerAnimated:YES];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
//    YSYLog(@"%d", (int)self.childViewControllers.count);
//    if (self.childViewControllers.count > 1) {
//        return YES;
//    }
//    return NO;
    return self.childViewControllers.count > 1;
}
@end
