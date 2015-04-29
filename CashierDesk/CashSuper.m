//
//  CashSuper.m
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashSuper.h"

@implementation CashSuper

+ (instancetype)cashWithPlan:(Plan *)plan
{
    CashSuper *instance = [[self alloc]init];
    instance.plan = plan;
    return instance;
}

- (float)acceptCash:(float)acceptCash
{
    /*子类重写*/
    return 0.f;
}

@end
