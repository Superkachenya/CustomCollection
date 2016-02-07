//
//  main.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCDeque.h"
#import "CCSingleLinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSNumber *testObj = @1;
        NSNumber *testObj2 = @2;
        NSNumber *testObj3 = @3;
        NSNumber *testObj4 = @4;
        NSString *testObj5 = @"A";
        
        /*DequeTest
         {
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
         */
        
        CCSingleLinkedList *listTest = [[CCSingleLinkedList alloc] initWithCapacity:10];
        
        [listTest addObject:testObj];
        [listTest addObject:testObj5];
        [listTest addObject:testObj];
        [listTest addObject:testObj5];
        [listTest addObject:testObj];
        [listTest addObject:testObj5];
        [listTest addObject:testObj];
        [listTest addObject:testObj5];
        [listTest addObject:testObj];
        [listTest addObject:testObj5];

        NSLog(@"%@ 1", [listTest objectAtIndex:1]);
        NSLog(@"%@ 2", [listTest objectAtIndex:2]);
        NSLog(@"%@ 3", [listTest objectAtIndex:3]);
        NSLog(@"%@ 4", [listTest objectAtIndex:4]);
        NSLog(@"%@ 5", [listTest objectAtIndex:5]);
        NSLog(@"%@ 6", [listTest objectAtIndex:6]);
        NSLog(@"%@ 7", [listTest objectAtIndex:7]);
        NSLog(@"%@ 8", [listTest objectAtIndex:8]);
        NSLog(@"%@ 9", [listTest objectAtIndex:9]);
        NSLog(@"%@ 10", [listTest objectAtIndex:10]);
        
        [listTest removeObject:testObj5];
        
        NSLog(@"%@ 1", [listTest objectAtIndex:1]);
        NSLog(@"%@ 2", [listTest objectAtIndex:2]);
        NSLog(@"%@ 3", [listTest objectAtIndex:3]);
        NSLog(@"%@ 4", [listTest objectAtIndex:4]);
        NSLog(@"%@ 5", [listTest objectAtIndex:5]);

        [listTest insertObject:testObj5 atIndex:1];
        [listTest insertObject:testObj atIndex:1];
        [listTest insertObject:testObj5 atIndex:2];
        [listTest insertObject:testObj atIndex:9];
        [listTest insertObject:testObj5 atIndex:9];

        
        NSLog(@"%@ 1", [listTest objectAtIndex:1]);
        NSLog(@"%@ 2", [listTest objectAtIndex:2]);
        NSLog(@"%@ 3", [listTest objectAtIndex:3]);
        NSLog(@"%@ 4", [listTest objectAtIndex:4]);
        NSLog(@"%@ 5", [listTest objectAtIndex:5]);
        NSLog(@"%@ 6", [listTest objectAtIndex:6]);
        NSLog(@"%@ 7", [listTest objectAtIndex:7]);
        NSLog(@"%@ 8", [listTest objectAtIndex:8]);
        NSLog(@"%@ 9", [listTest objectAtIndex:9]);
        NSLog(@"%@ 10", [listTest objectAtIndex:10]);
        
        
        [listTest removeObjectAtIndex:10];
        [listTest removeObjectAtIndex:9];
        [listTest removeObjectAtIndex:8];
        [listTest removeObjectAtIndex:7];
        [listTest removeObjectAtIndex:6];
        [listTest removeObjectAtIndex:5];
        [listTest removeObjectAtIndex:4];
        
        NSLog(@"%@ 1", [listTest objectAtIndex:1]);
        NSLog(@"%@ 2", [listTest objectAtIndex:2]);
        NSLog(@"%@ 3", [listTest objectAtIndex:3]);
        
        NSLog(@"%li COUNT", listTest.count);
        
    }
    return 0;
}
