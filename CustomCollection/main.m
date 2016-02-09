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
#import "CCNonARCDeque.h"
#import "CCNonARCDoublyNode.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSNumber *testObj = @1;
        NSNumber *testObj2 = @2;
        NSNumber *testObj3 = @3;
        
        //        NSNumber *testObj4 = @4;
        //        NSNumber *testObj5 = @5;
        //
        //        CCDeque *theVeryNewTestDeque = [[CCDeque alloc] initWithCapacity:10];
        //
        //        [theVeryNewTestDeque pushFront:testObj];
        //        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //        [theVeryNewTestDeque pushBack:testObj2];
        //        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //        [theVeryNewTestDeque pushFront:testObj3];
        //        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //
        //        [theVeryNewTestDeque popBack];
        //        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //        [theVeryNewTestDeque popFront];
        //        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //        [theVeryNewTestDeque popBack];
        //        NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //        NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        
        CCNonARCDeque *nonARCDequeTest = [CCNonARCDeque new];
        
        NSLog(@"FIRST PUSH\n\n");
        [nonARCDequeTest pushFront:testObj];
        NSLog(@"%@ HEAD", [nonARCDequeTest peakHeadObject]);
        NSLog(@"%@ TAIL", [nonARCDequeTest peakTailObject]);
        
        NSLog(@"SECOND PUSH\n\n");
        [nonARCDequeTest pushBack:testObj2];
        NSLog(@"%@ HEAD", [nonARCDequeTest peakHeadObject]);
        NSLog(@"%@ TAIL", [nonARCDequeTest peakTailObject]);
        NSLog(@"%li NON ARC", [nonARCDequeTest retainCount]);
        
        NSLog(@"THIRD PUSH\n\n");
        [nonARCDequeTest pushFront:testObj3];
        NSLog(@"%@ HEAD", [nonARCDequeTest peakHeadObject]);
        NSLog(@"%@ TAIL", [nonARCDequeTest peakTailObject]);
        NSLog(@"%li NON ARC", [nonARCDequeTest retainCount]);
        
        NSLog(@"%@ FIRST POPPED BACK\n\n", [nonARCDequeTest popBack]);
        NSLog(@"%@ HEAD", [nonARCDequeTest peakHeadObject]);
        NSLog(@"%@ TAIL", [nonARCDequeTest peakTailObject]);
        NSLog(@"%li NON ARC", [nonARCDequeTest retainCount]);
        
        NSLog(@"%@ SECOND POPPED FRONT\n\n", [nonARCDequeTest popFront]);
        NSLog(@"%@ HEAD", [nonARCDequeTest peakHeadObject]);
        NSLog(@"%@ TAIL", [nonARCDequeTest peakTailObject]);
        NSLog(@"%li NON ARC", [nonARCDequeTest retainCount]);
        
        NSLog(@"%@ THIRD POPPED FRONT\n\n", [nonARCDequeTest popFront]);
        NSLog(@"%@ HEAD", [nonARCDequeTest peakHeadObject]);
        NSLog(@"%@ TAIL", [nonARCDequeTest peakTailObject]);
        [nonARCDequeTest release];
        
        //                 [theVeryNewTestDeque pushFront:testObj2];
        //                 [theVeryNewTestDeque pushBack:testObj3];
        //
        //                 NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //                 NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //                 NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        //
        //                 NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        //                 NSLog(@"%@ - POPPED",[theVeryNewTestDeque popFront]);
        //                 NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        //
        //                 NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //                 NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //
        //                 [theVeryNewTestDeque pushBack:testObj3];
        //
        //                 NSLog(@"%@ HEAD", [theVeryNewTestDeque peakHeadObject]);
        //                 NSLog(@"%@ TAIL", [theVeryNewTestDeque peakTailObject]);
        //
        //                 NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        //                 NSLog(@"%@ - POPPED",[theVeryNewTestDeque popFront]);
        //                 NSLog(@"%@ - POPPED",[theVeryNewTestDeque popBack]);
        //                 NSLog(@"%li - count",(long)theVeryNewTestDeque.count);
        //
        //                 [theVeryNewTestDeque pushFront:testObj2];
        //                 [theVeryNewTestDeque pushBack:testObj3];
        //                 [theVeryNewTestDeque pushFront:testObj];
        
        //                 CCDeque *newDeque = [theVeryNewTestDeque copy];
        //                 NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        //                 NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        //
        //                 [newDeque pushFront:testObj];
        //                 [newDeque pushBack:testObj2];
        //
        //                 NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        //                 NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        //
        //                 NSLog(@"%@ - HEAD", [theVeryNewTestDeque peakHeadObject]);
        //                 NSLog(@"%@ - TAIL", [theVeryNewTestDeque peakTailObject]);
        
        
        
        //                 if ([NSKeyedArchiver archiveRootObject: newDeque toFile:@"CCDeque.arch"] == NO) {
        //                 NSLog (@"archiving failed");
        //                 }
        //
        //                 CCDeque *archiveTestDeque = [NSKeyedUnarchiver unarchiveObjectWithFile:@"CCDeque.arch"];
        //
        //                 NSLog(@"%@ ARCHIVEhead", [archiveTestDeque peakHeadObject]);
        //                 NSLog(@"%@ ARCHIVEtail", [archiveTestDeque peakTailObject]);
        //                 NSLog(@"%@ - NEWhead", [newDeque peakHeadObject]);
        //                 NSLog(@"%@ - NEWtail", [newDeque peakTailObject]);
        //                 NSLog(@"%li - count",(long)archiveTestDeque.count);
        
        //        CCSingleLinkedList *listTest = [[CCSingleLinkedList alloc] initWithCapacity:10];
        //
        //        [listTest addObject:testObj5];
        //        [listTest addObject:testObj5];
        //        [listTest addObject:testObj];
        //        [listTest addObject:testObj5];
        //        [listTest addObject:testObj5];
        //        [listTest addObject:testObj2];
        //        [listTest addObject:testObj3];
        //        [listTest addObject:testObj5];
        //        [listTest addObject:testObj5];
        //        [listTest addObject:testObj4];
        //
        //        NSLog(@"%@ 1", [listTest objectAtIndex:0]);
        //        NSLog(@"%@ 2", [listTest objectAtIndex:1]);
        //        NSLog(@"%@ 3", [listTest objectAtIndex:2]);
        //        NSLog(@"%@ 4", [listTest objectAtIndex:3]);
        //        NSLog(@"%@ 5", [listTest objectAtIndex:4]);
        //        NSLog(@"%@ 6", [listTest objectAtIndex:5]);
        //        NSLog(@"%@ 7", [listTest objectAtIndex:6]);
        //        NSLog(@"%@ 8", [listTest objectAtIndex:7]);
        //        NSLog(@"%@ 9", [listTest objectAtIndex:8]);
        //        NSLog(@"%@ 10", [listTest objectAtIndex:9]);
        //
        //        [listTest removeObject:testObj5];
        //
        //        NSLog(@"%@ 1", [listTest objectAtIndex:0]);
        //        NSLog(@"%@ 2", [listTest objectAtIndex:1]);
        //        NSLog(@"%@ 3", [listTest objectAtIndex:2]);
        //        NSLog(@"%@ 4", [listTest objectAtIndex:3]);
        //
        //        NSLog(@"%li COUNT", listTest.count);
        //
        //        [listTest insertObject:testObj atIndex:0];
        //        [listTest insertObject:testObj2 atIndex:1];
        //        [listTest insertObject:testObj3 atIndex:1];
        //        [listTest insertObject:testObj4 atIndex:3];
        //        [listTest insertObject:testObj5 atIndex:4];
        //        [listTest insertObject:testObj5 atIndex:0];
        //
        //
        //        NSLog(@"%@ 1", [listTest objectAtIndex:0]);
        //        NSLog(@"%@ 2", [listTest objectAtIndex:1]);
        //        NSLog(@"%@ 3", [listTest objectAtIndex:2]);
        //        NSLog(@"%@ 4", [listTest objectAtIndex:3]);
        //        NSLog(@"%@ 5", [listTest objectAtIndex:4]);
        //        NSLog(@"%@ 6", [listTest objectAtIndex:5]);
        //        NSLog(@"%@ 7", [listTest objectAtIndex:7]);
        //        NSLog(@"%@ 8", [listTest objectAtIndex:8]);
        //        NSLog(@"%@ 9", [listTest objectAtIndex:9]);
        //
        //        NSLog(@"%li COUNT", listTest.count);
        //
        //        [listTest removeObjectAtIndex:9];
        //        [listTest removeObjectAtIndex:9];
        //        [listTest removeObjectAtIndex:8];
        //        [listTest removeObjectAtIndex:7];
        //        [listTest removeObjectAtIndex:6];
        //        [listTest removeObjectAtIndex:5];
        //        [listTest removeObjectAtIndex:4];
        //
        //        NSLog(@"%@ 1", [listTest objectAtIndex:0]);
        //        NSLog(@"%@ 2", [listTest objectAtIndex:1]);
        //        NSLog(@"%@ 3", [listTest objectAtIndex:2]);
        //
        //        NSLog(@"%li COUNT", listTest.count);
    }
    return 0;
}
