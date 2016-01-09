//
//  ViewController.m
//  AddingTwoNumbers
//
//  Created by Chen-An Huang on 1/9/16.
//  Copyright © 2016 Yolk Huang. All rights reserved.
//

#import "ViewController.h"
#import "YHAddition.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
  [super viewDidLoad];
}

#pragma mark - IBActions

- (IBAction)addNumbers:(id)sender {
  NSInteger firstNumber = [self.firstNumberTextField.text integerValue];
  NSInteger secondNumber = [self.secondNumberTextField.text integerValue];
  
  YHAddition *addition = [[YHAddition alloc] init];
  NSInteger result = [addition addNumberOne:firstNumber withNumberTwo:secondNumber];
  self.resultTextField.text = [NSString stringWithFormat:@"%d", (short)result];
}

- (IBAction)resetFields:(id)sender {
  self.firstNumberTextField.text = @"";
  self.secondNumberTextField.text = @"";
  self.resultTextField.text = @"";
}

@end
