//
//  LoginController.m
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import "LoginController.h"
#import "RegisterController.h"
#import "HUDClass.h"
#import "MainViewController.h"
@interface LoginController ()<UITextFieldDelegate>
{
    HUDClass *hudClass;
    MBProgressHUD *HUD;
}
@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    hudClass = [[HUDClass alloc] init];
    HUD = [[MBProgressHUD alloc] init];
    [self.view addSubview:HUD];
    _accountTF.delegate = self;
    _keyTF.delegate = self;
    // Do any additional setup after loading the view from its nib.
}
#pragma mark - 点击登录按钮的事件
- (IBAction)login:(UIButton *)sender {
    if ([_accountTF.text isEqualToString:@""]) {
        [hudClass buildMB:HUD andContent:@"请填写账号"];
        return;
    }
    if ([_keyTF.text isEqualToString:@""]) {
        [hudClass buildMB:HUD andContent:@"请填写密码"];
        return;
    }
    MainViewController *mainVC = [[MainViewController alloc] init];
[self presentViewController:mainVC animated:YES completion:nil];
    //这里写上网络请求。如果验证成功可跳转，现在没有网络所以账号密码随便填写什么都可以跳转
}
#pragma mark - 点击注册按钮的事件
- (IBAction)registerAct:(UIButton *)sender {
    RegisterController *registerVC = [[RegisterController alloc] init];
    [self presentViewController:registerVC animated:YES completion:nil];
}
#pragma mark - textField的代理退键盘
-(bool)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
