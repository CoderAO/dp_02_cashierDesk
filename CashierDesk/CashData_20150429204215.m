//
//  CashData.m
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "CashData.h"
#import "Cash.h"

static NSArray *dataList;

@implementation CashData

+ (NSArray *)sharedCashes
{
    if (!dataList) {
        // 配置活动类型数据
        Cash *cash0 = [[Cash alloc]init];
        cash0.type = CashTypeNormal;
        cash0.desc = @"正常收费";
        
        Cash *cash1 = [[Cash alloc]init];
        cash1.type = CashTypeDiscount;
        cash1.discountFactor = 0.8f;
        cash1.desc = [NSString stringWithFormat:@"打%.0f折", cash1.discountFactor * 10];
        
        Cash *cash2 = [[Cash alloc]init];
        cash2.type = CashTypeReturn;
        cash2.condition = 300.f;
        cash2.cashReturn = 60.f;
        cash2.desc = [NSString stringWithFormat:@"满%.0f减%.0f",cash2.condition, cash2.cashReturn];
        
        dataList = @[cash0, cash1, cash2];
    }
    return dataList;
}

@end
