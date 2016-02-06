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
    CCNodeList *addedNode = [CCNodeList new];
    addedNode.object = object;
    if (index == 1) {
        addedNode.nextNode = self.tailNode;
        self.tailNode = addedNode;
    } else {
    for (NSUInteger counter = 2; counter <= index; counter++) {
        
    }
    }
//    CCNodeList *tempNode = nil;
//    for (NSUInteger counter = 1; counter < index && self.tailNode.nextNode; counter++) {
//        self.tailNode = self.tailNode.nextNode;
//    }
//    tempNode = [CCNodeList new];
//    tempNode.object = object;
//    if (self.tailNode.nextNode) {
//        tempNode.nextNode = self.tailNode.nextNode;
//    } else {
//        tempNode.nextNode = nil;
//    }
//    self.tailNode = tempNode;
    self.count++;
}

#pragma mark - remove methods

- (void)removeObject:(id)object {
    CCNodeList *removedNode = [CCNodeList new];
    removedNode.object = object;
    CCNodeList *compareNode = self.tailNode;
    for (NSUInteger counter = 1; counter <= self.capacity; counter++) {
        if ([removedNode.object isEqualTo:compareNode.object]) {
        }
    }
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    
}

#pragma mark - return object method

- (id)objectAtIndex:(NSUInteger)index {
    CCNodeList *tempNode = self.tailNode;
    if (index > self.count) {
        NSLog(@"Index Not Allowed");
        tempNode = nil;
    } else {
        for (NSUInteger counter = 1; counter < index; counter++) {
            tempNode = self.tailNode.nextNode;
        }
    }
    return tempNode.object;
}



















@end
