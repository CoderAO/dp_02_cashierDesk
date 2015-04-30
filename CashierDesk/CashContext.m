//
//  CashContext.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashContext.h"
#import "CashSuper.h"
#import "Plan.h"
#import "PlanNormal.h"
#import "PlanDiscount.h"
#import "PlanReturn.h"
#import "CashNormal.h"
#import "CashDiscount.h"
#import "CashReturn.h"

@interface CashContext()

@end

@implementation CashContext

+ (instancetype)contextWithPlan:(Plan *)plan;
{
    CashContext *context = [[self alloc]init];
    context.plan = plan;
    return context;
}

- (float)getResult:(float)shouldPrice
{
    CashSuper *csuper =  [self cashSuperWithPlan:self.plan];
    return [csuper acceptCash:shouldPrice];
}

// 根据传入plan的不同类型来确定初始化哪种计算的类
- (CashSuper *)cashSuperWithPlan:(Plan *)plan
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
