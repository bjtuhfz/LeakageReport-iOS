//
//  MessageDetailController.m
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import "MessageDetailController.h"

@interface MessageDetailController ()

@end

@implementation MessageDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    _userIcon.layer.cornerRadius = 20;
    _userIcon.layer.masksToBounds = YES;
    // Do any additional setup after loading the view from its nib.
}

#pragma mark - 点击返回按钮的事件
- (IBAction)getBackAct:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
