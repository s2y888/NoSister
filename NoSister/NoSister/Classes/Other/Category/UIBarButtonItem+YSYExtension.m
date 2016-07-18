//
//  UIBarButtonItem+YSYExtension.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "UIBarButtonItem+YSYExtension.h"

@implementation UIBarButtonItem (YSYExtension)

+ (instancetype)itemWithImage:(NSString *)normalImage hlightedImage:(NSString *)hlightedImage action:(SEL)action target:(id)target
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    if (normalImage.length) {
        [button setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    }
    if (hlightedImage.length) {
        [button setImage:[UIImage imageNamed:hlightedImage] forState:UIControlStateHighlighted];
    }
//    button.frame = CGRectMake(0, 0, button.currentImage.size.width, button.currentImage.size.height);
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
