//
//  CashReturn.m
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashReturn.h"
#import "PlanReturn.h"

@implementation CashReturn

- (float)acceptCash:(float)acceptCash
{
    if (acceptCash >= ((PlanReturn *)self.plan).condition) {
        return acceptCash - floor(acceptCash / ((PlanReturn *)self.plan).condition) * ((PlanReturn *)self.plan).cashReturn;
    }
    return acceptCash;
}

@end
