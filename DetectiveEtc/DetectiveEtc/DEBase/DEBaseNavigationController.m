//
//  DEBaseNavigationController.m
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import "DEBaseNavigationController.h"

@interface DEBaseNavigationController ()

@end

@implementation DEBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor] , NSFontAttributeName:NF_Nav_Title_BoldFont}];
    [[UINavigationBar appearance] setBackgroundImage:[[UIImage imageNamed:@"dt_nav_bg"] stretchableImageWithLeftCapWidth:3 topCapHeight:3]  forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
