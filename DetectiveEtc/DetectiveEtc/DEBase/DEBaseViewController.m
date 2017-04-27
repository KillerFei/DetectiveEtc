//
//  DEBaseViewController.m
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import "DEBaseViewController.h"

@interface DEBaseViewController ()

@end

@implementation DEBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    if (!kStringIsEmpty(_navTitle)) {
        self.title = _navTitle;
    }
}
#pragma mark - hide NavBar
- (void)hideNavBar:(BOOL)isHide
{
    [self.navigationController setNavigationBarHidden:isHide];
}
#pragma mark - setLeftBackNavItem
- (void)setLeftBackNavItem
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 30, 30);
    [btn setImage:[UIImage imageNamed:@"nf_nav_leftback"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(doBack) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}
#pragma mark - doBack
- (void)doBack
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
