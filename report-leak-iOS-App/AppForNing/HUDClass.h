//
//  HUDClass.h
//  ABCOnlineEnglish
//
//  Created by yinheng on 15/11/11.
//  Copyright © 2015年 Binkle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
@interface HUDClass : UIView
{
    MBProgressHUD *HUD;
}
-(instancetype)init;
-(void)buildMB:(MBProgressHUD *)hud andContent:(NSString *)contentText;
-(void)buildMB:(MBProgressHUD *)hud;
@end
