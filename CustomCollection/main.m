//
//  main.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCDeque.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    CCDeque *testDeque = [[CCDeque alloc] initWithCapacity:12];
    
    NSNumber *testObj = @2;
    NSString *testObj2 = @"Super String";
    NSNumber *testObj3 = @44;
    NSString *testObj4 = @"Hey Ho!";
    NSArray *testObj5 = @[@1, @2, @3, @4];
    NSString *testObj6 = @"NEW String";
    NSNumber *testObj7 = @67;
    
    [testDeque pushFront:testObj];
    [testDeque pushFront:testObj4];
    [testDeque pushBack:testObj2];
    [testDeque pushBack:testObj3];
    [testDeque pushBack:testObj5];
    
    
    
    
    NSLog(@"%li - count",(long)testDeque.count);
    
    NSLog(@"%@ - head", [testDeque peakHeadObject]);
    NSLog(@"%@ - tail", [testDeque peakTailObject]);
    
    NSLog(@"%@  - popped from head", [testDeque popFront]);
    NSLog(@"%@ - head", [testDeque peakHeadObject]);
    
    NSLog(@"%@ - popped from tail", [testDeque popBack]);
    NSLog(@"%@ - tail", [testDeque peakTailObject]);
    
    NSLog(@"%li - count",(long)testDeque.count);
    
    CCDeque *newDeque = [testDeque copy];
    NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
    NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
    
    [newDeque pushFront:testObj6];
    [newDeque pushBack:testObj7];
    
    NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
    NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
    
    NSLog(@"%@ - head", [testDeque peakHeadObject]);
    NSLog(@"%@ - tail", [testDeque peakTailObject]);
    
    
    
    if ([NSKeyedArchiver archiveRootObject: testDeque toFile:@"CCDeque.arch"] == NO) {
      NSLog (@"archiving failed");
    }
    
    CCDeque *archiveTest = [NSKeyedUnarchiver unarchiveObjectWithFile:@"CCDeque.arch"];
    
    NSLog(@"%@", [archiveTest peakHeadObject]);
    
  }
  return 0;
}
