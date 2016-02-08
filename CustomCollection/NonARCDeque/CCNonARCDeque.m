//
//  CCNonARCDeque.m
//  CustomCollection
//
//  Created by Danil on 08.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCNonARCDeque.h"
#import "CCNonARCDoublyNode.h"

NSInteger const kCCNonARCDequeDefaultCapacity = 100;

@interface CCNonARCDeque ()

@property (nonatomic) NSUInteger capacity;
@property (nonatomic, readwrite) NSInteger count;
@property (retain, nonatomic) CCNonARCDoublyNode *headNode;
@property (retain, nonatomic) CCNonARCDoublyNode *tailNode;

@end

@implementation CCNonARCDeque

#pragma mark - initializers

- (instancetype)init {
    return [self initWithCapacity:kCCNonARCDequeDefaultCapacity];
}

- (instancetype)initWithCapacity:(NSInteger)capacity {
    if (self = [super init]) {
        self.capacity = capacity;
    }
    return self;
}

#pragma mark - push methods

- (void)pushFront:(id)object {
    if (self.count >= self.capacity) {
        NSLog(@"ALARM!!! You're beyond bounds");
    } else {
        CCNonARCDoublyNode *currentNode = [CCNonARCDoublyNode new];
        currentNode.object = object;
        if (!self.headNode) {
            self.headNode = self.tailNode = currentNode;
        } else {
            self.headNode.nextNode = currentNode;
            currentNode.previousNode = self.headNode;
            self.headNode = currentNode;
        }
        self.count++;
    }
}

- (void)pushBack:(id)object {
    if (self.count >= self.capacity) {
        NSLog(@"ALARM!!! You're beyond bounds");
    } else {
        CCNonARCDoublyNode *currentNode = [CCNonARCDoublyNode new];
        currentNode.object = object;
        if (!self.tailNode) {
            self.tailNode = self.headNode = currentNode;
        } else {
            self.tailNode.previousNode = currentNode;
            currentNode.nextNode = self.tailNode;
            self.tailNode = currentNode;
        }
        self.count++;
        
    }
}

#pragma mark - pop methods

- (id)popFront {
    CCNonARCDoublyNode *poppedNode = nil;
    if (!self.count) {
        NSLog(@"There's no elements to pop");
    } else {
        poppedNode = [CCNonARCDoublyNode new];
        if ([self.headNode isEqualTo:self.tailNode]) {
            self.tailNode = nil;
        }
        poppedNode.object = self.headNode.object;
        self.headNode = self.headNode.previousNode;
        self.headNode.nextNode = nil;
        self.count--;
    }
    return poppedNode.object;
}

- (id)popBack {
    CCNonARCDoublyNode *poppedNode = nil;
    if (!self.count) {
        NSLog(@"There's no elements to pop");
    } else {
        poppedNode = [CCNonARCDoublyNode new];
        if ([self.tailNode isEqualTo:self.headNode]) {
            self.headNode = nil;
        }
        poppedNode.object = self.tailNode.object;
        self.tailNode = self.tailNode.nextNode;
        self.tailNode.previousNode = nil;
        self.count--;
    }
    return poppedNode.object;
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
