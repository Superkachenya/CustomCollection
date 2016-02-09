//
//  CCNonARCDeque.m
//  CustomCollection
//
//  Created by Danil on 08.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCNonARCDeque.h"
#import "CCNonARCDoublyNode.h"

@interface CCNonARCDeque ()

@property (nonatomic, readwrite) NSInteger count;
@property (retain, nonatomic) CCNonARCDoublyNode *headNode;
@property (retain, nonatomic) CCNonARCDoublyNode *tailNode;

@end

@implementation CCNonARCDeque

#pragma mark - push methods

- (void)pushFront:(id)object {
    CCNonARCDoublyNode *currentNode = [[CCNonARCDoublyNode alloc] initWithObject:object];
    if (!self.headNode) {
        self.headNode = self.tailNode = currentNode;
    } else {
        self.headNode.nextNode = currentNode;
        currentNode.previousNode = self.headNode;
        self.headNode = currentNode;
    }
    [currentNode release];
    [self retain];
    self.count++;
}

- (void)pushBack:(id)object {
    CCNonARCDoublyNode *currentNode = [[CCNonARCDoublyNode alloc] initWithObject:object];
    if (!self.tailNode) {
        self.tailNode = self.headNode = currentNode;
    } else {
        self.tailNode.previousNode = currentNode;
        currentNode.nextNode = self.tailNode;
        self.tailNode = currentNode;
    }
    [currentNode release];
    [self retain];
    self.count++;
}

#pragma mark - pop methods

- (id)popFront {
    id poppedNode = nil;
    if (!self.count) {
        NSLog(@"There's no elements to pop");
    } else {
        if ([self.headNode isEqualTo:self.tailNode]) {
            self.tailNode = nil;
        }
        poppedNode = self.headNode.object;
        self.headNode = self.headNode.previousNode;
        self.headNode.nextNode = nil;
        [self release];
        self.count--;
    }
    return poppedNode;
}

- (id)popBack {
    id poppedNode = nil;
    if (!self.count) {
        NSLog(@"There's no elements to pop");
    } else {
        if ([self.tailNode isEqualTo:self.headNode]) {
            self.headNode = nil;
        }
        poppedNode = self.tailNode.object;
        self.tailNode = self.tailNode.nextNode;
        self.tailNode.previousNode = nil;
        [self release];
        self.count--;
    }
    return poppedNode;
}

#pragma mark - peak methods

- (id)peakHeadObject {
    if (!self.headNode) {
        NSLog(@"There's no elements in deque");
    }
    return self.headNode.object;
}

- (id)peakTailObject {
    if (!self.tailNode) {
        NSLog(@"There's no elements in deque");
    }
    return self.tailNode.object;
}

@end
