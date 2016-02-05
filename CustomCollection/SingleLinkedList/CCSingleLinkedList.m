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

@property (nonatomic) CCNodeList *headNode;
//@property (nonatomic) CCNodeList *tailNode;

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
    CCNodeList *currentNode = [CCNodeList new];
    currentNode.object = object;
    currentNode.nextNode = self.headNode;
    self.headNode = currentNode;
    
}


- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    
}

#pragma mark - remove methods

- (void)removeObject:(id)object {
    
}
- (void)removeObjectAtIndex:(NSUInteger)index {
    
}

#pragma mark - return object method

- (id)objectAtIndex:(NSUInteger)index {
    return self;
}

@end
