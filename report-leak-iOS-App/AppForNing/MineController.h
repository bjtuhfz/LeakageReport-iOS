//
//  MineController.h
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineController : UIViewController
- (IBAction)getBackAct:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *userIcon;
@property (weak, nonatomic) IBOutlet UITextView *sendTV;
- (IBAction)sendMessageAct:(UIButton *)sender;
@end
