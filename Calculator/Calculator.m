//
//  Calculator.m
//  Calculator
//
//  Created by Vini Gupta on 4/17/14.
//  Copyright (c) 2014 Vini Gupta. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
-(int)add:(int)a to:(int)b
{
    return a+b;
}

-(float)divide:(int)a by:(int)b
{
    float result =  (float)a/b;
    if (result==INFINITY) {
        [NSException raise:@"Cannot divide by zero!"
                    format:@"Not possible to divide %d with %d", a,b];
    }
    return result;
}

@end
