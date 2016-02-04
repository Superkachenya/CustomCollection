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
        
        NSNumber *testObj = @1;
        NSNumber *testObj2 = @2;
        NSNumber *testObj3 = @3;
        NSNumber *testObj4 = @4;
        NSNumber *testObj5 = @5;
        NSNumber *testObj6 = @6;
        NSNumber *testObj7 = @7;
        
        //    [testDeque pushFront:testObj];
        //    [testDeque pushFront:testObj4];
        //    [testDeque pushBack:testObj2];
        //    [testDeque pushBack:testObj3];
        //    [testDeque pushBack:testObj5];
        //
        //
        //
        //
        //    NSLog(@"%li - count",(long)testDeque.count);
        //
        //    NSLog(@"%@ - head", [testDeque peakHeadObject]);
        //    NSLog(@"%@ - tail", [testDeque peakTailObject]);
        //
        //    NSLog(@"%@  - popped from head", [testDeque popFront]);
        //    NSLog(@"%@ - head", [testDeque peakHeadObject]);
        //
        //    NSLog(@"%@ - popped from tail", [testDeque popBack]);
        //    NSLog(@"%@ - tail", [testDeque peakTailObject]);
        //
        //    NSLog(@"%li - count",(long)testDeque.count);
        //
        //    CCDeque *newDeque = [testDeque copy];
        //    NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        //    NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        //
        //    [newDeque pushFront:testObj6];
        //    [newDeque pushBack:testObj7];
        //
        //    NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        //    NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        //
        //    NSLog(@"%@ - head", [testDeque peakHeadObject]);
        //    NSLog(@"%@ - tail", [testDeque peakTailObject]);
        //
        //
        //
        //    if ([NSKeyedArchiver archiveRootObject: testDeque toFile:@"CCDeque.arch"] == NO) {
        //      NSLog (@"archiving failed");
        //    }
        //
        //    CCDeque *archiveTestDeque = [NSKeyedUnarchiver unarchiveObjectWithFile:@"CCDeque.arch"];
        //
        //    NSLog(@"%@", [archiveTestDeque peakHeadObject]);
        //    NSLog(@"%@", [archiveTestDeque peakTailObject]);
        //    NSLog(@"%li - count",(long)archiveTestDeque.count);
        
        CCDeque *theVeryNewTestDeque = [[CCDeque alloc] initWithCapacity:10];
        
        [theVeryNewTestDeque pushBack:testObj];
        NSLog(@"%@", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@", [theVeryNewTestDeque peakTailObject]);
        
        [theVeryNewTestDeque pushFront:testObj2];
        [theVeryNewTestDeque pushFront:testObj3];
        
        [theVeryNewTestDeque pushBack:testObj4];
        [theVeryNewTestDeque pushBack:testObj5];
        [theVeryNewTestDeque pushBack:testObj6];
        [theVeryNewTestDeque pushBack:testObj7];
        
        NSLog(@"%@", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@", [theVeryNewTestDeque peakTailObject]);
        NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popFront]);
        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popFront]);
        NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        
        
        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        
        NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        
        
        
        
        
    }
    return 0;
}
