//
//  MainViewCell.m
//  AppForNing
//
//  Created by yinheng on 16/5/4.
//  Copyright © 2016年 Ning. All rights reserved.
//

#import "MainViewCell.h"

@implementation MainViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _userIcon.layer.cornerRadius = 15;
    _userIcon.layer.masksToBounds = YES;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
