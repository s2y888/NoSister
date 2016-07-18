//
//  YSYTabBar.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "YSYTabBar.h"

@interface YSYTabBar()
/**
 *  发布按钮
 */
@property (nonatomic, strong) UIButton *publicButton;
@end

@implementation YSYTabBar

/**
 *  初始化发布按钮
 */
- (UIButton *)publicButton
{
    if (_publicButton == nil) {
        _publicButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_publicButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_publicButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [_publicButton addTarget:self action:@selector(publishAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_publicButton];
    }
    return _publicButton;
}

- (void)publishAction
{
    YSYFuncLog
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    int index = 0;
    CGFloat width = self.frame.size.width / 5;
    CGFloat height = self.frame.size.height;
    for (UIView *view in self.subviews) {
//        if ([NSClassFromString(@"UITabBarButton") isSubclassOfClass:[view class]]) {
//            YSYLog(@"%@", view);
//
//        }
        CGFloat x = 0;
        if ([@"UITabBarButton" isEqualToString:NSStringFromClass(view.class)]) {
             x = index * width;
            if (index >= 2) {
                x += width;
            }
            [view setFrame:CGRectMake(x, 0, width, height)];
            index++;
        }
    }
    [self.publicButton setFrame:CGRectMake(0, 0, width, height)];
    [self.publicButton setCenter:CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5)];
}

@end
