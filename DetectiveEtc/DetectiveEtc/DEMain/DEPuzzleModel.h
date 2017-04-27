//
//  DEPuzzleModel.h
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DEPuzzleModel : NSObject

@property (nonatomic, strong) NSString *qid;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *difficulty;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *analysis;
@property (nonatomic, strong) NSString *correctScore;
@property (nonatomic, strong) NSString *wrongScore;
@property (nonatomic, strong) NSString *skipScore;
@property (nonatomic, strong) NSString *correctAnalysisScore;
@property (nonatomic, strong) NSString *wrongAnalysisScore;
@property (nonatomic, strong) NSString *dirrectAnalysisScore;
@property (nonatomic, strong) NSString *shareScore;
@property (nonatomic, strong) NSString *shareCount;
@property (nonatomic, strong) NSString *collectCount;
@property (nonatomic, strong) NSString *correct;
@property (nonatomic, strong) NSMutableArray *answers;
@end
