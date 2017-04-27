//
//  DEAnswerModel.m
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import "DEAnswerModel.h"

@implementation DEAnswerModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _answerArr = [[NSMutableArray alloc] init];
    }
    return _answerArr;
}

@end
