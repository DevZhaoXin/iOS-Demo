//
//  ZXBezierPath.h
//  stackOverflow
//
//  Created by IOS on 2019/2/15.
//  Copyright © 2019 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZXBezierPath : UIBezierPath

// 线宽和起始点
+ (instancetype)paintPathWithLineWidth:(CGFloat)width
                            startPoint:(CGPoint)startP;


@end

NS_ASSUME_NONNULL_END
