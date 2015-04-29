//
//  ChooseCalculatePatternControllerTableViewController.m
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "ChooseCalculatePatternController.h"
#import "Plan.h"
#import "Plans.h"

@interface ChooseCalculatePatternController ()

@property (nonatomic, copy) Block completionBlock;

@end

@implementation ChooseCalculatePatternController

+ (instancetype)controllerWithCompletion:(Block) block
{
    ChooseCalculatePatternController *vc = [[self alloc]init];
    vc.completionBlock = block;
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [Plans sharedPlans].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Plan *plan = [Plans sharedPlans][indexPath.row];
    cell.textLabel.text = plan.desc;
    if (plan == self.model) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.completionBlock([Plans sharedPlans][indexPath.row]);
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
