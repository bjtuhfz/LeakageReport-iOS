//
//  LoginController.h
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UITextField *keyTF;
- (IBAction)login:(UIButton *)sender;
- (IBAction)registerAct:(UIButton *)sender;

@end
