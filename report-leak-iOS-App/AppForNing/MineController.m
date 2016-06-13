//
//  MineController.m
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import "MineController.h"

@interface MineController ()

@end

@implementation MineController

- (void)viewDidLoad {
    [super viewDidLoad];
    _userIcon.layer.cornerRadius = 30;
    _userIcon.layer.masksToBounds = YES;
    // Do any additional setup after loading the view from its nib.
}
#pragma mark - 返回按钮的事件
- (IBAction)getBackAct:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark - 发送按钮的事件
- (IBAction)sendMessageAct:(UIButton *)sender {
    
}
#pragma mark - 退键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_sendTV resignFirstResponder];
}
@end
