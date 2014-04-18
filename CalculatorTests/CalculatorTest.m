//
//  CalculatorTest.m
//  Calculator
//
//  Created by Vini Gupta on 4/17/14.
//  Copyright (c) 2014 Vini Gupta. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface CalculatorTest : XCTestCase
{
    Calculator *calculator;
}
@end

@implementation CalculatorTest

- (void)setUp
{
    calculator = [[Calculator alloc] init];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testTrue
{
    XCTAssert(true, @"true should be true");
}

- (void)testFalse
{
    XCTAssertFalse(false, @"false should be false");
}

- (void)testNil
{
    XCTAssertNil(Nil, @"nil should be nil");
}

- (void)testNotNil
{
    XCTAssertNotNil(@"hello", @"hello should not be nil");
}

- (void)testObjectIsNil
{
    NSObject *object;
    XCTAssertNil(object, @"Object should be nil");
}

- (void)testObjectIsNotNil
{
    NSObject *object = [[NSObject alloc] init];
    XCTAssertNotNil(object, @"Object should not be nil");
}

- (void)testNilObjectIsFalse
{
    NSObject *object;
    XCTAssertFalse(object, @"nil object should be false");
}

- (void)testNotNilObjectIsTrue
{
    NSObject *object = [[NSObject alloc] init];
    XCTAssert(object, @"Not nil object should be true");
}

- (void)testObjectIsKindOfClass
{
    NSObject *object = [[NSObject alloc] init];
    XCTAssert([object isKindOfClass:[NSObject class]], @"Object is kind of class NSObject should be true");
}

- (void)testAdd
{
    int expectedResult = 8;
    int result = [calculator add:5 to:3];
    XCTAssertEqual(expectedResult, result, @"We expected %d, but the result was %d",expectedResult,result);
}

-(void)testDivideByZero
{
    XCTAssertThrows([calculator divide:5 by:0], @"We expected an exception to be raised when dividing by 0");
}


@end
