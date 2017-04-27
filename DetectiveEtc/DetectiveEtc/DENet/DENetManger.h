//
//  DENetManger.h
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^callBack)(NSError *error ,NSArray *foods);

@interface DENetManger : NSObject

+ (void)getPuzzlesWithQid:(NSNumber *)qid
                 callBack:(callBack)callBack;


@end
