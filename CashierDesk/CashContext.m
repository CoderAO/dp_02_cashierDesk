//
//  CashContext.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashContext.h"
#import "CashSuper.h"
#import "CashFactory.h"

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
    CashSuper *csuper = [CashFactory cashSuperWithPlan:self.plan];
    return [csuper acceptCash:shouldPrice];
}

@end
