//
//  ViewController.m
//  CashierDesk
//
//  Created by 敖 然 on 15/4/29.
//  Copyright (c) 2015年 CoderAO. All rights reserved.
//

#import "ViewController.h"
#import "ChooseCalculatePatternController.h"
#import "CashSuper.h"
#import "Plan.h"
#import "Plans.h"
#import "CashContext.h"
#import "CashNormal.h"
#import "CashDiscount.h"
#import "CashReturn.h"

@interface ViewController ()
{
    float totolPrice;
    Plan *currentPlan;
}

@property (strong, nonatomic) IBOutlet UITextField *priceField;
@property (strong, nonatomic) IBOutlet UITextField *countField;
@property (strong, nonatomic) IBOutlet UITextView *dispTextView;
@property (strong, nonatomic) IBOutlet UILabel *totalPriceLabel;
@property (strong, nonatomic) IBOutlet UIButton *calculatePatternButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupData];
    [self setupDisplay];
}

- (void)setupData
{
    totolPrice = 0.f;
    currentPlan = [Plans sharedPlans][0];
}

- (void)setupDisplay
{
    [self.calculatePatternButton setTitle:currentPlan.desc forState:UIControlStateNormal];
    self.totalPriceLabel.text = [@(totolPrice) stringValue];
}

- (IBAction)commit:(UIButton *)sender {
    float price = [self.priceField.text floatValue];
    NSInteger count = [self.countField.text integerValue];
    // 计算之前的价格
    float shouldPrice = price *count;
    // 关键的两行(计算应收的价格)
    // 将选中的优惠方案传入context对象中,实例化具体策略的过程也由context实现
    // CashContext这个类的创建,使得控制器只需要认识一个类就好了(直接简单工厂模式需要认识两个,一个工厂类,一个抽象的基类)
    // 更加降低了耦合性
    CashContext *context = [CashContext contextWithPlan:currentPlan];
    float realPrice = [context getResult:shouldPrice];
    
    totolPrice += realPrice;
    NSMutableString *dispString = [NSMutableString stringWithString:self.dispTextView.text];
    [dispString appendFormat:@"单价： %.2f, 数量：%ld, %@, 小计：%.2f\n",price, (long)count, currentPlan.desc, realPrice];
    
    self.dispTextView.text = dispString;
    self.totalPriceLabel.text = [@(totolPrice) stringValue];
}

- (IBAction)reset:(id)sender {
    totolPrice = 0;
    self.priceField.text = @"";
    self.countField.text = @"";
    self.dispTextView.text = @"";
    self.totalPriceLabel.text = @"0.0";
}

- (IBAction)chooseCalculatorPattern:(id)sender {
    __weak typeof(self) wSelf = self;
    ChooseCalculatePatternController *vc = [ChooseCalculatePatternController controllerWithCompletion:^(Plan *plan) {
        [self.calculatePatternButton setTitle:plan.desc forState:UIControlStateNormal];
        currentPlan = plan;
    }];
    vc.model = currentPlan;
    [wSelf presentViewController:vc animated:YES completion:nil];
}

@end
