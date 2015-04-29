//
//  PlanReturn.h
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//
/* 满返类型的活动方案*/

#import "Plan.h"

@interface PlanReturn : Plan

/**
 *  返现条件,每满多少钱返
 */
@property (nonatomic, assign) float condition;

/**
 *  返现额度,满足条件返现的数量
 */
@property (nonatomic, assign) float cashReturn;

/**
 *  构造方法
 */
+ (instancetype)planWithCondition:(float)condition cashReturn:(float)cashReturn;

@end
