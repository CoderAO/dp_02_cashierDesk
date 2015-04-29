//
//  CashContext.h
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CashSuper;
@class Plan;

@interface CashContext : NSObject

@property (nonatomic, strong) Plan *plan;

+ (instancetype)contextWithPlan:(Plan *)plan;
- (float)getResult:(float)shouldPrice;

@end
