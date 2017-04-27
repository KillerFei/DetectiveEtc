//
//  DEMainViewController.m
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import "DEMainViewController.h"
#import <HYBNetworking/HYBNetworking.h>
#import "DENetManger.h"

@interface DEMainViewController ()

@end

@implementation DEMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self requestData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)requestData
{
    [DENetManger getPuzzlesWithQid:@(-1) callBack:^(NSError *error, NSArray *foods) {
        
    }];
}



@end
