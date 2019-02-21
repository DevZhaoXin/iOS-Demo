//
//  ZXDrawBoarderView.h
//  stackOverflow
//
//  Created by IOS on 2019/2/15.
//  Copyright © 2019 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^draftInfoBlock) (NSInteger num, NSArray *linesInfo, NSArray *canceledLinesInfo);

@interface ZXDrawBoarderView : UIView

@property (nonatomic, strong) NSIndexPath *index;    //
@property (nonatomic, assign) NSInteger num;    //
@property (nonatomic, strong) NSArray *linesInfo;    //
@property (nonatomic, strong) NSArray *canceledLinesInfo;    //
@property (nonatomic, copy) draftInfoBlock draftInfoBlock;    //


- (void)show;

- (void)dismiss;

@end

NS_ASSUME_NONNULL_END
