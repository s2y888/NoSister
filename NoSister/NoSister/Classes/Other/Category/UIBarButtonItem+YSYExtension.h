//
//  UIBarButtonItem+YSYExtension.h
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YSYExtension)

+ (instancetype)itemWithImage:(NSString *)normalImage hlightedImage:(NSString *)hlightedImage action:(SEL)action target:(id)target;

@end
