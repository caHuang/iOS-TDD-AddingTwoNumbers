//
//  AddingTwoNumbersTests.m
//  AddingTwoNumbersTests
//
//  Created by Chen-An Huang on 1/9/16.
//  Copyright © 2016 Yolk Huang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "YHAddition.h"

@interface AddingTwoNumbersTests : XCTestCase {
  YHAddition *addition;
}

@end

@implementation AddingTwoNumbersTests

- (void)setUp {
  [super setUp];
  addition = [[YHAddition alloc] init];
}

- (void)tearDown {
  [super tearDown];
}

- (void)testAdditionClassExists {
  XCTAssertNotNil(addition, @"YHAddition class exists");
}

- (void)testAddTwoPlusTwo {
  NSInteger result = [addition addNumberOne:2 withNumberTwo:2];
  XCTAssertEqual(result, 4, @"Addition of 2 + 2 is 4");
}

- (void)testAddTwoPlusSeven {
  NSInteger result = [addition addNumberOne:2 withNumberTwo:7];
  XCTAssertEqual(result, 9, @"Addition of 2 + 7 is 9");
}

@end
