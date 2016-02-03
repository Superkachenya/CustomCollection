//
//  main.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCDeque.h"
#import "CCNode.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    CCDeque *testDeque = [[CCDeque alloc] initWithCapacity:12];
    
    NSNumber *testObj = @2;
    NSString *testObj2 = @"Super String";
    
    
    
    [testDeque pushFront:testObj];
    [testDeque pushBack:testObj2];
    
    
    NSLog(@"%@", [testDeque peakHeadObject]);
    NSLog(@"%@", [testDeque peakTaleObject]);

  }
  return 0;
}
