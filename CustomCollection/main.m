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
        
        CCSingleLinkedList *listTest = [[CCSingleLinkedList alloc] initWithCapacity:5];
        
        //        NSMutableArray *testArray = [NSMutableArray new];
        //
        //        [testArray addObject:testObj];
        //        [testArray addObject:testObj2];
        //        [testArray addObject:testObj3];
        //        [testArray addObject:testObj4];
        //        [testArray addObject:testObj4];
        //        [testArray addObject:testObj4];
        //        [testArray removeObject:testObj4];
        //        [testArray addObject:testObj4];
        
        
        
        [listTest addObject:testObj];
        
        
        [listTest addObject:testObj2];
        
        [listTest addObject:testObj3];
        
        [listTest addObject:testObj4];
        
        [listTest insertObject:testObj5 atIndex:4];
        NSLog(@"%@ 4", [listTest objectAtIndex:4]);
        
        [listTest insertObject:testObj5 atIndex:2];
        NSLog(@"%@ 2", [listTest objectAtIndex:2]);
        NSLog(@"%@ 3", [listTest objectAtIndex:3]);


        
        [listTest insertObject:testObj5 atIndex:3];
        NSLog(@"%@ 3", [listTest objectAtIndex:3]);

        
        NSLog(@"%@ 2", [listTest objectAtIndex:2]);
        NSLog(@"%@ 4", [listTest objectAtIndex:4]);
        NSLog(@"%@ 1", [listTest objectAtIndex:1]);
        NSLog(@"%@ 3", [listTest objectAtIndex:3]);
        NSLog(@"%@ 2", [listTest objectAtIndex:2]);
        
        
        
        
        
        
        
        
        NSLog(@"%li COUNT", listTest.count);
        
        
        
        
        
    }
    return 0;
}
