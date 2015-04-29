//
//  PlanDiscount.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.

/* 打折类型的活动方案 */

#import "PlanDiscount.h"

@implementation PlanDiscount

+ (instancetype)planWithDiscount:(float)discount
{
    PlanDiscount *instance = [[PlanDiscount alloc]init];
    instance.discount = discount;
    instance.desc = [NSString stringWithFormat:@"打%.0f折", discount * 10];
    return instance;
}

@end
