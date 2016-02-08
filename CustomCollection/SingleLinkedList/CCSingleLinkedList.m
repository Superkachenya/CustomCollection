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

#pragma mark - Initializers

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

#pragma mark - Addition methods

- (void)addObject:(id)object {
    if (self.count >= self.capacity) {
        NSLog(@"ALARM!!! You're beyond bounds");
    } else {
        CCNodeList *currentNode = [CCNodeList new];
        currentNode.object = object;
        if(!self.count) {
            self.headNode = self.tailNode = currentNode;
        } else if (!self.headNode.nextNode){
            self.headNode.nextNode = currentNode;
        } else {
            self.tailNode.nextNode = currentNode;
        }
        self.tailNode = currentNode;
        self.count++;
    }
}

- (void)insertObject:(id)object atIndex:(NSInteger)index {
    if (self.count >= self.capacity) {
        NSLog(@"ALARM!!! You're beyond bounds");
    } else if (index > self.count) {
        NSLog(@"Index Not Allowed");
    } else {
        CCNodeList *addedNode = [CCNodeList new];
        CCNodeList *tempNode = self.headNode;
        addedNode.object = object;
        if (index == 0) {
            addedNode.nextNode = tempNode;
            self.headNode = addedNode;
        } else {
            for (NSInteger counter = 1; counter < index; counter++) {
                tempNode = tempNode.nextNode;
            }
            if (!tempNode.nextNode) {
                self.tailNode = tempNode.nextNode = addedNode;
            } else {
                addedNode.nextNode = tempNode.nextNode;
                tempNode.nextNode = addedNode;
            }
        }
        self.count++;
    }
}

#pragma mark - Remove methods

- (void)removeObject:(id)object {
    CCNodeList *comparativeNode = [CCNodeList new];
    comparativeNode.object = object;
    CCNodeList *removedNode = self.headNode;
    CCNodeList *previousNode;
    for (NSUInteger counter = 0; counter <= self.count; counter++) {
        if ([comparativeNode.object isEqualTo:removedNode.object]) {
            if ([self.headNode.object isEqualTo:comparativeNode.object]) {
                self.headNode = self.headNode.nextNode;
                self.count--;
            }
            previousNode = comparativeNode.nextNode;
            removedNode = removedNode.nextNode;
            previousNode.nextNode = removedNode;
            comparativeNode.nextNode = previousNode;
            self.count--;
        }
        comparativeNode.nextNode = removedNode;
        removedNode = removedNode.nextNode;
    }
}

- (void)removeObjectAtIndex:(NSInteger)index {
    if (index > self.count) {
        NSLog(@"Not Allowed Index");
    } else {
        CCNodeList *removedNode = self.headNode;
        CCNodeList *previousNode;
        if (index == 0) {
            self.headNode = self.headNode.nextNode;
        } else {
            for (NSUInteger counter = 1; counter <= index; counter++) {
                previousNode = removedNode;
                removedNode = removedNode.nextNode;
            }
            if (!removedNode.nextNode) {
                self.tailNode = previousNode;
            }
            previousNode.nextNode = removedNode.nextNode;
            removedNode = removedNode.nextNode;
        }
        self.count--;
    }
}

#pragma mark - Get object method

- (id)objectAtIndex:(NSInteger)index {
    CCNodeList *tempNode;
    if (index > self.count) {
        NSLog(@"Not Allowed Index");
        tempNode = nil;
    } else {
        tempNode = self.headNode;
        for (NSUInteger counter = 0; counter < index; counter++) {
            tempNode = tempNode.nextNode;
        }
    }
    return tempNode.object;
}

@end
