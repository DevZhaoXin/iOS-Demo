//
//  ZXMyDrawer.h
//  stackOverflow
//
//  Created by IOS on 2019/2/15.
//  Copyright © 2019 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZXMyDrawer : UIView

@property (nonatomic, assign) CGFloat width;    // 宽

@property (nonatomic, strong) NSMutableArray *canceledLines;    // 撤销的线条数组

@property (nonatomic, strong) NSMutableArray *lines;    // 线条数组

// 清屏
- (void)clearScreen;

// 撤销
- (void)undo;

// 恢复
- (void)redo;

@end

NS_ASSUME_NONNULL_END
