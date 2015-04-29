//
//  CashDiscount.m
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashDiscount.h"
#import "PlanDiscount.h"

@implementation CashDiscount

- (float)acceptCash:(float)acceptCash
{
    return acceptCash * ((PlanDiscount *)self.plan).discount;
}

@end
