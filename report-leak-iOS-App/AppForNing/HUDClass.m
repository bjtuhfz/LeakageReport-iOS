//
//  HUDClass.m
//  ABCOnlineEnglish
//
//  Created by yinheng on 15/11/11.
//  Copyright © 2015年 Binkle. All rights reserved.
//

#import "HUDClass.h"

@implementation HUDClass
-(instancetype)init
{
    self = [super init];
    if (self) {
  
    }
    return self;
}
#pragma mark - 创建带文字的菊花加载
-(void)buildMB:(MBProgressHUD *)hud andContent:(NSString *)contentText
{
    hud.mode = MBProgressHUDModeText;
    [self.superview bringSubviewToFront:hud];
    [hud show:YES];
    hud .labelText = contentText;
    [hud hide:YES afterDelay:2];
}
#pragma mark - 纯菊花加载
-(void)buildMB:(MBProgressHUD *)hud
{
    [[[UIApplication sharedApplication]keyWindow]addSubview:HUD];
    HUD.mode = MBProgressHUDAnimationFade;
    [HUD show:YES];
    [HUD hide:YES afterDelay:2];
}
@end
