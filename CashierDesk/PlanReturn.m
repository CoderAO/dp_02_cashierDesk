//
//  PlanReturn.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "PlanReturn.h"

@implementation PlanReturn

+ (instancetype)planWithCondition:(float)condition cashReturn:(float)cashReturn
{
    PlanReturn *instance = [[self alloc]init];
    instance.condition = condition;
    instance.cashReturn = cashReturn;
    instance.desc = [NSString stringWithFormat:@"满%.0f返%.0f",condition, cashReturn];
    return instance;
}

@end
