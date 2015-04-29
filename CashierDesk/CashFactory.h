//
//  CashFactory.h
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CashSuper;
@class Plan;

@interface CashFactory : NSObject

// 根据传入plan的不同类型来确定初始化哪种计算的类
+ (CashSuper *)cashSuperWithPlan:(Plan *)plan;

@end
