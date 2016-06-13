//
//  RegisterController.m
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import "RegisterController.h"

@interface RegisterController ()

@end

@implementation RegisterController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
#pragma mark - 点击注册按钮的事件
- (IBAction)registerAct:(UIButton *)sender {
    //也是网络请求
}
#pragma mark - 点击返回按钮的事件
- (IBAction)getBackAct:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
