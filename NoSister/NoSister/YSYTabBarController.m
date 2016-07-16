//
//  YSYTabBarController.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/16.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "YSYTabBarController.h"

@interface YSYTabBarController ()

@end

@implementation YSYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 设置所有UITabBarItem的文字属性
    UITabBarItem *item = [UITabBarItem appearance];
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    // 添加子控制器
    [self setupOneChildViewController:[[UITableViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupOneChildViewController:[[UIViewController alloc] init] title:@"最新" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setupOneChildViewController:[[UITableViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupOneChildViewController:[[UIViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
}


/**
 *  初始化一个子控制器
 *
 *  @param vc            子控制器
 *  @param title         标题
 *  @param image         图标
 *  @param selectedImage 选中的图标
 */
- (void)setupOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.view.backgroundColor = YSYRandomColor;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    [self addChildViewController:vc];
}
@end
