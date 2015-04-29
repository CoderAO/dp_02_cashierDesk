//
//  CashSuper.h
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//
/*抽象策略*/

#import <Foundation/Foundation.h>
@class Plan;

@interface CashSuper : NSObject

/**
 *  方案模型
 */
@property (nonatomic, strong) Plan *plan;

/**
 *  构造方法基类(都是通过plan类型的实例进行初始化,但是根据具体是Plan的哪种子类,初始化具体的策略也不同)
 */
+ (instancetype)cashWithPlan:(Plan *)plan;

/**
 *  传入未打折的值,返回计算后的值
 */
- (float)acceptCash:(float)acceptCash;


@end
