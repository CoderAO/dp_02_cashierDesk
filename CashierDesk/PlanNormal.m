//
//  PlanNormal.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "PlanNormal.h"

@implementation PlanNormal

+ (instancetype)planNormal
{
    PlanNormal *instance = [[self alloc]init];
    instance.desc = @"正常收费";
    return instance;
}

@end
