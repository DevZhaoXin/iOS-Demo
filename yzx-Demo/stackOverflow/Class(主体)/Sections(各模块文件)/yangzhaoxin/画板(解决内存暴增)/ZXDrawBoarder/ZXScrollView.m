//
//  ZXScrollView.m
//  stackOverflow
//
//  Created by IOS on 2019/2/15.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ZXScrollView.h"

@implementation ZXScrollView

- (BOOL)touchesShouldBegin:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event inContentView:(UIView *)view {
    if ([event allTouches].count == 1) {
        return YES;
    }
    return NO;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
