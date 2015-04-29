//
//  CashFactory.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashFactory.h"
#import "Plan.h"
#import "PlanNormal.h"
#import "PlanDiscount.h"
#import "PlanReturn.h"
#import "CashSuper.h"
#import "CashNormal.h"
#import "CashDiscount.h"
#import "CashReturn.h"

@implementation CashFactory

+ (CashSuper *)cashSuperWithPlan:(Plan *)plan
{
    CashSuper *csuper = nil;
    if ([plan isKindOfClass:[PlanNormal class]]) {
        csuper = [CashNormal cashWithPlan:nil];
    }
    else if ([plan isKindOfClass:[PlanDiscount class]]){
        csuper = [CashDiscount cashWithPlan:plan];
    }
    else if ([plan isKindOfClass:[PlanReturn class]]){
        csuper = [CashReturn cashWithPlan:plan];
    }
    return csuper;
}

@end
