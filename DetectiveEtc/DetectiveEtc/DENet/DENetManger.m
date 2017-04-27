//
//  DENetManger.m
//  DetectiveEtc
//
//  Created by 岳鹏飞 on 2017/4/27.
//  Copyright © 2017年 岳鹏飞. All rights reserved.
//

#import "DENetManger.h"
#import <HYBNetworking/HYBNetworking.h>
#import <AdSupport/AdSupport.h>
#import "GDataXMLNode.h"
#import "DEPuzzleModel.h"
#import "DEAnswerModel.h"

@implementation DENetManger

+ (NSDictionary *)commonParameter
{
    NSString *adId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    adId = [adId stringByReplacingOccurrencesOfString:@"-" withString:@""];
    if (kStringIsEmpty(adId)) {
        adId = @"xxxx";
    }
    NSDictionary *param = @{@"appname":@"puzzlemeirizhiliti",
                            @"version":@"1.8.2",
                            @"hardware":@"iphone",
                            @"udid":adId};
    return param;
}

+ (void)getPuzzlesWithQid:(NSNumber *)qid
                 callBack:(callBack)callBack
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] initWithDictionary:[DENetManger commonParameter]];
    [params setObject:qid forKey:@"lastquestionid"];
    [HYBNetworking getWithUrl:@"http://joke.zaijiawan.com/Puzzle/morequestions.jsp" refreshCache:YES params:params success:^(id response) {
        
        //初始化
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:response options:0 error:nil];
        //获取根节点
        GDataXMLElement *rootElement = [doc rootElement];
        //获取其他节点
        NSArray *puzzles = [rootElement elementsForName:@"puzzle"];
        NSMutableArray *dataSource = [[NSMutableArray alloc] init];
        for (GDataXMLElement *puzzle in puzzles ) {
            DEPuzzleModel *model = [[DEPuzzleModel alloc] init];
            model.qid          = [[[puzzle elementsForName:@"id"] objectAtIndex:0] stringValue];
            model.type         = [[[puzzle elementsForName:@"type"] objectAtIndex:0] stringValue];
            model.difficulty   = [[[puzzle elementsForName:@"difficulty"] objectAtIndex:0] stringValue];
            model.text         = [[[puzzle elementsForName:@"text"] objectAtIndex:0] stringValue];
            model.analysis     = [[[puzzle elementsForName:@"analysis"] objectAtIndex:0] stringValue];
            model.correctScore = [[[puzzle elementsForName:@"correctScore"] objectAtIndex:0] stringValue];
            model.wrongScore   = [[[puzzle elementsForName:@"wrongScore"] objectAtIndex:0] stringValue];
            model.skipScore    = [[[puzzle elementsForName:@"skipScore"] objectAtIndex:0] stringValue];
            model.correctAnalysisScore = [[[puzzle elementsForName:@"correctAnalysisScore"] objectAtIndex:0] stringValue];
            model.wrongAnalysisScore   = [[[puzzle elementsForName:@"wrongAnalysisScore"] objectAtIndex:0] stringValue];
            model.dirrectAnalysisScore = [[[puzzle elementsForName:@"dirrectAnalysisScore"] objectAtIndex:0] stringValue];
            model.shareScore   = [[[puzzle elementsForName:@"shareScore"] objectAtIndex:0] stringValue];
            model.shareCount   = [[[puzzle elementsForName:@"shareCount"] objectAtIndex:0] stringValue];
            model.collectCount = [[[puzzle elementsForName:@"collectCount"] objectAtIndex:0] stringValue];
            model.shareScore   = [[[puzzle elementsForName:@"shareScore"] objectAtIndex:0] stringValue];
            GDataXMLElement *answers   = [[puzzle elementsForName:@"answers"] objectAtIndex:0];
            model.correct = [[[answers elementsForName:@"correct"] objectAtIndex:0] stringValue];
            NSArray *ans = [answers elementsForName:@"answer"];
            for (GDataXMLElement *answer in ans) {
                [model.answers addObject:[answer stringValue]];
            }
            [dataSource addObject:model];
        }
    } fail:^(NSError *error) {
        
    } ];
    
    
    
}
@end
