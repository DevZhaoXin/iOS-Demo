//
//  ZXBezierPath.m
//  stackOverflow
//
//  Created by IOS on 2019/2/15.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ZXBezierPath.h"

@implementation ZXBezierPath

// 线宽和起始点
+ (instancetype)paintPathWithLineWidth:(CGFloat)width
                            startPoint:(CGPoint)startP {
    ZXBezierPath *path = [[self alloc] init];
    path.lineWidth = width;
    path.lineCapStyle = kCGLineCapRound; // 线条拐角
    path.lineJoinStyle = kCGLineCapRound; // 终点处理
    [path moveToPoint:startP];
    return path;
}

@end
