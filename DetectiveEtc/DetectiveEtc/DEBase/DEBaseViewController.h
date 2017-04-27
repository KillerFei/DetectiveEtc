//
//  DEBaseViewController.h
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DEBaseViewController : UIViewController

@property (nonatomic, strong) NSString *navTitle;

- (void)hideNavBar:(BOOL)isHide;
- (void)setLeftBackNavItem;
@end
