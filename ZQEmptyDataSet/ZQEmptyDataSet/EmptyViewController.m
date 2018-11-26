//
//  EmptyViewController.m
//  ZQEmptyDataSet
//
//  Created by GTLand on 2018/11/26.
//  Copyright © 2018年 GTLand. All rights reserved.
//

#import "EmptyViewController.h"
#import "NSObject+EmptyDataSet.h"

@interface EmptyViewController () <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain) NSMutableArray *dataSources;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation EmptyViewController

-(UITableView *)tableView
{
    if(_tableView == nil)
    {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStyleGrouped];
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 1)];
        _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 1)];
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.showsHorizontalScrollIndicator = NO;
    }
    
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"空数据页面";
    
    self.dataSources = [@[] mutableCopy];
    
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self setEmptyDataWithScrollView:self.tableView];
    
}

- (void)setType:(EmptyType)type {
    _type = type;
    switch (type) {
        case EmptyTypeDefault: {
            
        }
            break;
            
        case EmptyTypeCustom1: {
            self.noDataImgName = @"pn_icon_noData";
            self.noDataTitle = @"亲，您没有订单任何订单消息哦！";
        }
            break;
            
        case EmptyTypeCustom2: {
            self.noDataImgName = @"pn_icon_noData";
            self.noDataTitle = @"亲，您没有订单任何订单消息哦！";
            self.noDataDetailTitle = @"您购买的宝贝将会呈现在这里";
        }
            break;
            
        case EmptyTypeCustom3: {
            self.noDataImgName = @"pn_icon_noData";
            self.noDataTitle = @"亲，您没有订单任何订单消息哦！";
            self.noDataDetailTitle = @"您购买的宝贝将会呈现在这里";
            self.btnTitle = @"马上逛逛";
        }
            break;
            
        default:
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"XLCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSources.count;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
