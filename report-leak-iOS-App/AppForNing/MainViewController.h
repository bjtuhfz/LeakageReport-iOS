//
//  MainViewController.h
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *MainViewTableView;
@property (weak, nonatomic) IBOutlet UIButton *mineBtn;
- (IBAction)mineAct:(UIButton *)sender;

@end
