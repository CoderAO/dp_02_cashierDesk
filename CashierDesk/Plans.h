//
//  CashData.h
//  CashierDesk
//
//  Created by Apple on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Plans : NSObject

/**
 *  单例
 *
 *  @return 返回当前所有活动方案配置
 */
+ (NSArray *)sharedPlans;

@end
