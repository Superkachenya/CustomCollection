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

@property (assign, nonatomic, readwrite) NSInteger count;
@property (assign, nonatomic) NSUInteger capacity;
@property (strong, nonatomic) CCNodeList *tailNode;
@property (strong, nonatomic) CCNodeList *headNode;

@end

@implementation CCSingleLinkedList

#pragma mark - Initializers

- (instancetype)init {
    return [self initWithCapacity:kCCListDefaultCapacity];
}

- (instancetype)initWithCapacity:(NSInteger)capacity {
    if (self = [super init]) {
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
        if (!self.count) {
            self.headNode = currentNode;
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
    } else if (index < 0 || index >= self.count) {
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
    CCNodeList *removedNode = nil;
    CCNodeList *previousNode = nil;
    for (NSUInteger counter = 0; counter <= self.count; counter++) {
        if ([self.headNode.object isEqualTo:object]) {
            self.headNode = self.headNode.nextNode;
            self.count--;
        } else  break;
    }
    previousNode = self.headNode;
    removedNode = previousNode.nextNode;
    for (NSUInteger counter = 0; counter <= self.count; counter++) {
        if ([removedNode.object isEqualTo:object]) {
            previousNode.nextNode = removedNode.nextNode;
            removedNode = previousNode.nextNode;
            counter--;
            self.count--;
        } else {
            previousNode = removedNode;
            removedNode = removedNode.nextNode;
        }
    }
    
}

- (void)removeObjectAtIndex:(NSInteger)index {
    if (index < 0 || index > self.count) {
        NSLog(@"Not Allowed Index");
    } else {
        CCNodeList *removedNode = self.headNode;
        CCNodeList *previousNode;
        if (index == 0) {
            self.headNode = self.headNode.nextNode;
        } else {
            for (NSUInteger counter = 1; counter < index; counter++) {
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
