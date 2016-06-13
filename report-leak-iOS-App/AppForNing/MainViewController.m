//
//  MainViewController.m
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import "MainViewController.h"
#import "MainViewCell.h"
#import "MineController.h"
#import "MessageDetailController.h"
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mineBtn.layer.cornerRadius = 30;
    _mineBtn.layer.masksToBounds = YES;
    _MainViewTableView.delegate = self;
    _MainViewTableView.dataSource = self;
    // Do any additional setup after loading the view from its nib.
}
#pragma mark - 创建tableview
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //这里是显示的行数，一般是请求到的数据的数量。这里先写死了
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainViewCell*cell = [tableView dequeueReusableCellWithIdentifier:@"mainViewCellKey"];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MainViewCell" owner:self options:nil]lastObject];
    }
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
 [tableView deselectRowAtIndexPath:[tableView indexPathForSelectedRow] animated:NO];
    MessageDetailController *messageDetailVC = [[MessageDetailController alloc] init];
    [self presentViewController:messageDetailVC animated:YES completion:nil];
}
#pragma mark - 点击Mine按钮的事件
- (IBAction)mineAct:(UIButton *)sender {
    MineController *mineVC = [[MineController alloc] init];
    mineVC.hidesBottomBarWhenPushed = YES;
    [self presentViewController:mineVC animated:YES completion:nil];
}
@end
