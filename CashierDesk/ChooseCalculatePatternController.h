//
//  ChooseCalculatePatternControllerTableViewController.h
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Plan;

typedef void(^Block)(Plan *plan);

@interface ChooseCalculatePatternController : UITableViewController

/**
 *  当前选中的模型
 */
@property (nonatomic, strong) Plan *model;

+ (instancetype)controllerWithCompletion:(Block) block;

@end
