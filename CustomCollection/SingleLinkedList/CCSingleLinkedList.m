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
        for (NSUInteger counter = 2; counter < index; counter++) {
            tempNode = tempNode.nextNode;
        }
        addedNode.nextNode = tempNode.nextNode;
        tempNode.nextNode = addedNode;
        if (self.headNode.nextNode) {
            self.headNode = self.headNode.nextNode;
        }
        self.count++;
    }
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
    CCNodeList *tempNode;
    if (index > self.count | index < 1) {
        NSLog(@"Index Not Allowed");
        tempNode = nil;
    } else {
        tempNode = [CCNodeList new];
        tempNode = self.tailNode;
        for (NSUInteger counter = 1; counter < index; counter++) {
            tempNode = tempNode.nextNode;
        }
    }
    return tempNode.object;
}


@end
