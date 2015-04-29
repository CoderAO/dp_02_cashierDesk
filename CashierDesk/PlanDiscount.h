//
//  PlanDiscount.h
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "Plan.h"

@interface PlanDiscount : Plan

/**
 *  折扣
 */
@property (nonatomic, assign) float discount;

/**
 *  构造方法
 */
+ (instancetype)planWithDiscount:(float)discount;

@end
