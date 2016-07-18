//
//  UIView+YSYExtension.m
//  NoSister
//
//  Created by 杨 尚毅 on 16/7/18.
//  Copyright © 2016年 YSY. All rights reserved.
//

#import "UIView+YSYExtension.h"

@implementation UIView (YSYExtension)
//@dynamic ysy_rightX,ysy_bottomY;

- (CGFloat)ysy_x
{
    return self.frame.origin.x;
}

- (void)setYsy_x:(CGFloat)ysy_x
{
    CGRect frame = self.frame;
    frame.origin.x = ysy_x;
    self.frame = frame;
}

- (CGFloat)ysy_y
{
    return self.frame.origin.y;
}

- (void)setYsy_y:(CGFloat)ysy_y
{
    CGRect frame = self.frame;
    frame.origin.y = ysy_y;
    self.frame = frame;
}

- (CGFloat)ysy_width
{
    return self.frame.size.width;
}

- (void)setYsy_width:(CGFloat)ysy_width
{
    CGRect frame = self.frame;
    frame.size.width = ysy_width;
    self.frame = frame;
}

- (CGFloat)ysy_height
{
    return self.frame.size.height;
}

- (void)setYsy_height:(CGFloat)ysy_height
{
    CGRect frame = self.frame;
    frame.size.height = ysy_height;
    self.frame = frame;
}


- (CGFloat)ysy_centerX
{
    return self.center.x;
}

- (void)setYsy_centerX:(CGFloat)ysy_centerX
{
    CGPoint center = self.center;
    center.x = ysy_centerX;
    self.center = center;
}

- (CGFloat)ysy_centerY
{
    return self.center.y;
}

- (void)setYsy_centerY:(CGFloat)ysy_centerY
{
    CGPoint center = self.center;
    center.y = ysy_centerY;
    self.center = center;
}

- (CGFloat)ysy_rightX
{
//    return self.ysy_x + self.ysy_width;
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)ysy_bottomY
{
//    return self.ysy_y + self.ysy_height;
    return CGRectGetMaxY(self.frame);
}

- (void)setYsy_rightX:(CGFloat)ysy_rightX
{
    self.ysy_x = ysy_rightX - self.ysy_width;
}

- (void)setYsy_bottomY:(CGFloat)ysy_bottomY
{
    self.ysy_y = ysy_bottomY - self.ysy_height;
}

@end
