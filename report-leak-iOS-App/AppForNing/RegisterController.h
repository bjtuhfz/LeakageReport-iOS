//
//  RegisterController.h
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UITextField *keyTF;
@property (weak, nonatomic) IBOutlet UITextField *certainKeyTF;
- (IBAction)registerAct:(UIButton *)sender;
- (IBAction)getBackAct:(UIButton *)sender;

@end
