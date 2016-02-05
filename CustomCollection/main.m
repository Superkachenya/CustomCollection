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
        
        
        NSNumber *testObj = @1;
        NSNumber *testObj2 = @2;
        NSNumber *testObj3 = @3;
        
        CCDeque *theVeryNewTestDeque = [[CCDeque alloc] initWithCapacity:10];
        
        [theVeryNewTestDeque pushFront:testObj];
        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        
        [theVeryNewTestDeque pushFront:testObj2];
        [theVeryNewTestDeque pushBack:testObj3];
        
        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popFront]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        
        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        
        [theVeryNewTestDeque pushBack:testObj3];
        
        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popFront]);
        NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        
        [theVeryNewTestDeque pushFront:testObj2];
        [theVeryNewTestDeque pushBack:testObj3];
        [theVeryNewTestDeque pushFront:testObj];
        
        CCDeque *newDeque = [theVeryNewTestDeque copy];
        NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        
        [newDeque pushFront:testObj];
        [newDeque pushBack:testObj2];
        
        NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        
        NSLog(@"%@ - HEAD", [theVeryNewTestDeque peakHeadObject]);
        NSLog(@"%@ - TAIL", [theVeryNewTestDeque peakTailObject]);
        
        
        
        if ([NSKeyedArchiver archiveRootObject: newDeque toFile:@"CCDeque.arch"] == NO) {
            NSLog (@"archiving failed");
        }
        
        CCDeque *archiveTestDeque = [NSKeyedUnarchiver unarchiveObjectWithFile:@"CCDeque.arch"];
        
        NSLog(@"%@ ARCHIVEhead", [archiveTestDeque peakHeadObject]);
        NSLog(@"%@ ARCHIVEtail", [archiveTestDeque peakTailObject]);
        NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        NSLog(@"%li - count",(long)archiveTestDeque.count);
        
        
        
        
    }
    return 0;
}
