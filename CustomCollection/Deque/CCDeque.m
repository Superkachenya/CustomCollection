//
//  CCDeque.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCDeque.h"
#import "CCNode.h"

NSUInteger const kCCDequeDefaultCapacity = 100;
NSUInteger const kCCDequeOneObject = 1;
NSString *const kCCDequeHeadNodeKey = @"CCDequeHeadNodeKey";
NSString *const kCCDequeTailNodeKey = @"CCDequeTailNodeKey";
NSString *const kCCDequeCountKey = @"CCDequeCountKey";


@interface CCDeque ()

@property (nonatomic) NSUInteger capacity;
@property (nonatomic, readwrite) NSInteger count;

@property (nonatomic) CCNode *headNode;
@property (nonatomic) CCNode *tailNode;


@end

@implementation CCDeque


#pragma mark - initializers

- (instancetype)init {
    return [self initWithCapacity:kCCDequeDefaultCapacity];
}

- (instancetype)initWithCapacity:(NSInteger)capacity {
    self = [super init];
    if (self) {
        self.capacity = capacity;
    }
    return self;
}

#pragma mark - push methods

- (void)pushFront:(id)object {
    if (self.count >= self.capacity) {
        NSLog(@"ALARM!!! You're beyond bounds");
    } else {
        CCNode *currentNode = [CCNode new];
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
        CCNode *currentNode = [CCNode new];
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
    CCNode *poppedNode = [CCNode new];
    if ([self.headNode isEqualTo:self.tailNode]) {
        self.tailNode = nil;
    }
    poppedNode.object = self.headNode.object;
    self.headNode = self.headNode.previousNode;
    self.headNode.nextNode = nil;
    self.count--;
    return poppedNode.object;
}

- (id)popBack {
    CCNode *poppedNode = [CCNode new];
    if ([self.tailNode isEqualTo:self.headNode]) {
        self.headNode = nil;
    }
    poppedNode.object = self.tailNode.object;
    self.tailNode = self.tailNode.nextNode;
    self.tailNode.previousNode = nil;
    self.count--;
    return poppedNode.object;
}

#pragma mark - peak methods

- (id)peakHeadObject {
    if(!self.headNode) {
        NSLog(@"There's no elements in deque");
    }
    return self.headNode.object;
}

- (id)peakTailObject {
    if(!self.tailNode) {
        NSLog(@"There's no elements in deque");
    }
    return self.tailNode.object;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    CCDeque *copy = [[[self class] allocWithZone:zone] initWithCapacity:self.capacity];
    copy.headNode = self.headNode;
    copy.tailNode = self.tailNode;
    copy.count = self.count;
    return copy;
}

#pragma mark - NSCoding

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.headNode forKey:kCCDequeHeadNodeKey];
    [aCoder encodeObject:self.tailNode forKey:kCCDequeTailNodeKey];
    [aCoder encodeInt64:self.count forKey:kCCDequeCountKey];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self.headNode = [aDecoder decodeObjectForKey:kCCDequeHeadNodeKey];
    self.tailNode = [aDecoder decodeObjectForKey:kCCDequeTailNodeKey];
    self.count = [aDecoder decodeInt64ForKey:kCCDequeCountKey];
    return self;
}

@end
