//
//  ViewController.m
//  stackOverflow
//
//  Created by apple on 2017/7/19.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ZXDrawVC.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;    // 列表

@property (nonatomic, strong) NSMutableDictionary *dataDic;    // 数据源

@end

@implementation ViewController



- (NSMutableDictionary *)dataDic {
    if (!_dataDic) {
        _dataDic = [NSMutableDictionary dictionaryWithCapacity:0];
    }
    return _dataDic;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kWindowW, kWindowH) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    }
    return _tableView;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
    NSMutableArray *titleArr = [NSMutableArray arrayWithCapacity:0];
    [titleArr addObject:@"画板(解决内存暴增问题)"];

    NSMutableArray *classArr = [NSMutableArray arrayWithCapacity:0];
    [classArr addObject:NSStringFromClass([ZXDrawVC class])];
    
    [self.dataDic setObject:titleArr forKey:@"title"];
    [self.dataDic setObject:classArr forKey:@"class"];
    
    [self.tableView reloadData];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}


#pragma UITableViewDelegate - UITableViewDataSource
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSMutableArray *arr = self.dataDic[@"title"];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    UILabel *label = [[UILabel alloc] init];
    NSMutableArray *titleArr = self.dataDic[@"title"];
    label.text = titleArr[indexPath.row];
    label.textColor = red_color;
    [cell.contentView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
    }];
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *classArr = self.dataDic[@"class"];
    Class vcClass = NSClassFromString(classArr[indexPath.row]);
    UIViewController *vc = [[vcClass alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
