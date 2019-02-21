//
//  ZXDrawVC.m
//  stackOverflow
//
//  Created by IOS on 2019/2/15.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ZXDrawVC.h"
#import "ZXDrawBoarderView.h"

@interface ZXDrawVC ()

@property (nonatomic, strong) UIButton *sender;    // 按钮

@property (nonatomic,strong) ZXDrawBoarderView * bv;

@end

@implementation ZXDrawVC

- (UIButton *)sender {
    if (!_sender) {
        _sender = [UIButton buttonWithType:UIButtonTypeCustom];
        _sender.frame = CGRectMake(100, 100, 200, 200);
        [_sender setTitle:@"画板" forState:UIControlStateNormal];
        [_sender setTitleColor:red_color forState:UIControlStateNormal];
        WS(wself);
        [_sender tapWithEvent:UIControlEventTouchUpInside withBlock:^(UIButton *sender) {
            wself.bv = [[ZXDrawBoarderView alloc] initWithFrame:CGRectZero];
            [wself.bv show];
        }];
    }
    return _sender;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.sender];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
