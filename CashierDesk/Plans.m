//
//  CashData.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "Plans.h"
#import "Plan.h"
#import "PlanNormal.h"
#import "PlanDiscount.h"
#import "PlanReturn.h"

static NSArray *dataList;

@implementation Plans

+ (NSArray *)sharedPlans
{
    if (!dataList) {
        // 配置活动类型数据
        Plan *plan0 = [PlanNormal planNormal];
        
        Plan *plan1 = [PlanDiscount planWithDiscount:0.8f];
        
        Plan *plan2 = [PlanReturn planWithCondition:300.f cashReturn:60.f];
        
        dataList = @[plan0, plan1, plan2];
    }
    return dataList;
}

@end
