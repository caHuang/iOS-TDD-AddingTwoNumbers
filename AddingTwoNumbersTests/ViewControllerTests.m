//
//  ViewControllerTests.m
//  AddingTwoNumbers
//
//  Created by Chen-An Huang on 1/9/16.
//  Copyright © 2016 Yolk Huang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewControllerTests : XCTestCase {
  ViewController *viewController;
}

@end

@implementation ViewControllerTests

- (void)setUp {
  [super setUp];
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  viewController = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
  [viewController view];
}

- (void)tearDown {
  [super tearDown];
}

- (void)testViewControllerViewExists  {
  XCTAssertNotNil(viewController.view, @"ViewController should contatin a view");
}

- (void)testFirstNumberTextFieldConnection {
  XCTAssertNotNil(viewController.firstNumberTextField, @"firstNumberTextField should be connected");
}

- (void)testSecondNumberTextFieldConnection {
  XCTAssertNotNil(viewController.secondNumberTextField, @"secondNumberTextField should be connected");
}

- (void)testResultTextFieldConnection {
  XCTAssertNotNil(viewController.resultTextField, @"resultTextField should be connected");
}

- (void)testAddButtonConnection {
  XCTAssertNotNil(viewController.addButton, @"addButton should be connected");
}

- (void)testAddButtonCheckIBAction {
  NSArray *actions = [viewController.addButton actionsForTarget:viewController forControlEvent:UIControlEventTouchUpInside];
  XCTAssertTrue([actions containsObject:@"addNumbers:"], @"");
}

- (void)testAddingTenPlusTwentyShouldBeThirty {
  viewController.firstNumberTextField.text = @"10";
  viewController.secondNumberTextField.text = @"20";
  [viewController.addButton sendActionsForControlEvents:UIControlEventTouchUpInside];
  XCTAssertEqualObjects(viewController.resultTextField.text, @"30", "Result of the textfield should be 30");
}

- (void)testResetButtonConnection {
  XCTAssertNotNil(viewController.resetButton, @"resetButton should be connected");
}

- (void)testResetButtonCheckIBAction {
  NSArray *actions = [viewController.resetButton actionsForTarget:viewController forControlEvent:UIControlEventTouchUpInside];
  XCTAssertTrue([actions containsObject:@"resetFields:"], @"");
}

- (void)testResetButtonShouldClearFields {
  viewController.firstNumberTextField.text = @"10";
  viewController.secondNumberTextField.text = @"20";
  viewController.resultTextField.text = @"30";
  [viewController.resetButton sendActionsForControlEvents:UIControlEventTouchUpInside];
  XCTAssertEqualObjects(viewController.firstNumberTextField.text, @"", @"FirstNumber textfield should be empty");
  XCTAssertEqualObjects(viewController.secondNumberTextField.text, @"", @"SecondNumber textfield should be empty");
  XCTAssertEqualObjects(viewController.resultTextField.text, @"", @"Result textfield should be empty");
}

@end
