//
//  CCSingleLinkedList.m
//  CustomCollection
//
//  Created by Danil on 05.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCSingleLinkedList.h"
#import "CCNodeList.h"

NSUInteger const kCCListDefaultCapacity = 100;

@interface CCSingleLinkedList ()

@property (nonatomic, readwrite) NSInteger count;
@property (nonatomic) NSUInteger capacity;

@property (nonatomic) CCNodeList *tailNode;
@property (nonatomic) CCNodeList *headNode;


@end

@implementation CCSingleLinkedList

#pragma mark - initializers
- (instancetype)init {
    return [self initWithCapacity:kCCListDefaultCapacity];
}

- (instancetype)initWithCapacity:(NSInteger)capacity {
    self = [super init];
    if (self) {
        self.capacity = capacity;
    }
    return self;
}

#pragma mark - addition methods

- (void)addObject:(id)object {
    if (self.count >= self.capacity) {
        NSLog(@"ALARM!!! You're beyond bounds");
    } else {
        CCNodeList *currentNode = [CCNodeList new];
        currentNode.object = object;
        if(!self.tailNode) {
            self.tailNode = self.headNode = currentNode;
        } else if (!self.tailNode.nextNode){
            self.tailNode.nextNode = currentNode;
        } else {
            self.headNode.nextNode = currentNode;
        }
        self.headNode = currentNode;
        self.count++;
    }
}

- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    if (self.count >= self.capacity) {
        NSLog(@"ALARM!!! You're beyond bounds");
    } else if (index > self.count | index < 1) {
        NSLog(@"Index Not Allowed");
    } else {
        CCNodeList *tempNode = [CCNodeList new];
        CCNodeList *addedNode = [CCNodeList new];
        tempNode = self.tailNode;
        addedNode.object = object;
        if (index == 1) {
            addedNode.nextNode = tempNode;
            self.tailNode = addedNode;
        } else {
            for (NSUInteger counter = 2; counter < index; counter++) {
                tempNode = tempNode.nextNode;
            }
            if (!tempNode.nextNode) {
                self.headNode = tempNode.nextNode = addedNode;
            } else {
                addedNode.nextNode = tempNode.nextNode;
                tempNode.nextNode = addedNode;
            }
        }
        self.count++;
    }
}

#pragma mark - remove methods

- (void)removeObject:(id)object {
    CCNodeList *comparativeNode = [CCNodeList new];
    comparativeNode.object = object;
    CCNodeList *removedNode = self.tailNode;
    for (NSUInteger counter = 1; counter <= self.capacity; counter++) {
        if ([comparativeNode.object isEqualTo:removedNode.object]) {
            CCNodeList *previousNode = comparativeNode.nextNode;
            removedNode = removedNode.nextNode;
            previousNode.nextNode = removedNode;
            comparativeNode.nextNode = previousNode;
            if (!removedNode.nextNode) {
                removedNode = self.headNode;
            }
            self.count--;
            continue;
        }
        comparativeNode.nextNode = removedNode;
        removedNode = removedNode.nextNode;
    }
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    if (index > self.count | index < 1) {
        NSLog(@"Not Allowed Index");
    } else {
        CCNodeList *removedNode = self.tailNode;
        CCNodeList *previousNode;
        if (index == 1) {
            self.tailNode = self.tailNode.nextNode;
        } else {
        for (NSUInteger counter = 2; counter <= index; counter++) {
            previousNode = removedNode;
            removedNode = removedNode.nextNode;
        }
        if (!removedNode.nextNode) {
            self.headNode = previousNode;
            previousNode.nextNode = nil;
        }
        previousNode.nextNode = removedNode.nextNode;
        removedNode = removedNode.nextNode;
        }
        self.count--;
    }
}

#pragma mark - return object method

- (id)objectAtIndex:(NSUInteger)index {
    CCNodeList *tempNode;
    if (index > self.count | index < 1) {
        NSLog(@"Not Allowed Index");
        tempNode = nil;
    } else {
        tempNode = self.tailNode;
        for (NSUInteger counter = 1; counter < index; counter++) {
            tempNode = tempNode.nextNode;
        }
    }
    return tempNode.object;
}


@end
