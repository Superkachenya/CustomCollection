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
            self.headNode = currentNode;
        } else {
            self.headNode.nextNode = currentNode;
            self.headNode = currentNode;
        }
        self.count++;
    }
}


- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    
}

#pragma mark - remove methods

- (void)removeObject:(id)object {
    CCNodeList *removedNode = [CCNodeList new];
    removedNode.object = object;
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    
}

#pragma mark - return object method

- (id)objectAtIndex:(NSUInteger)index {
    NSUInteger counter = 1;
    while (counter < index) {
        self.tailNode = self.tailNode.nextNode;
        counter ++;
    }
    return self.tailNode.object;
}



















@end
