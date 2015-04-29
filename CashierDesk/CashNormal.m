//
//  CashNormal.m
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashNormal.h"

@implementation CashNormal

// 重写父类方法，正常情况下（不打折，不返现）直接返回应交现金数
- (float)acceptCash:(float)acceptCash
{
    return acceptCash;
}

@end
