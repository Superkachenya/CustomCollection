//
//  CCDeque.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCDeque.h"
#import "CCNode.h"

NSUInteger const kDefaultCapacity = 100;

@interface CCDeque ()

@property (nonatomic) NSUInteger capacity;
@property (nonatomic, readwrite) NSInteger count;

@property (nonatomic) CCNode *headNode;
@property (nonatomic) CCNode *tailNode;


@end

@implementation CCDeque


#pragma mark - initializers

- (instancetype)init {
  self = [self initWithCapacity:kDefaultCapacity];
  return self;
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
    currentNode.previousNode = self.headNode;
    self.headNode = currentNode;
    self.count++;
  }
}

- (void)pushBack:(id)object {
  if (self.count >= self.capacity) {
    NSLog(@"ALARM!!! You're beyond bounds");
  } else {
    CCNode *currentNode = [CCNode new];
    currentNode.object = object;
    currentNode.nextNode = self.tailNode;
    self.tailNode = currentNode;
    self.count++;
  }
}




#pragma mark - pop methods

- (id)popFront {
  CCNode *currentNode = [CCNode new];
  currentNode = self.headNode;
  currentNode.object = self.headNode.object;
  self.headNode = self.headNode.previousNode;
  self.count--;
  return currentNode.object;
}

- (id)popBack {
  CCNode *currentNode = [CCNode new];
  currentNode.nextNode = self.tailNode;
  currentNode.object = self.tailNode.object;
  self.tailNode = self.tailNode.nextNode;
  self.count--;
  return currentNode.object;
}

#pragma mark - peak methods

- (id) peakHeadObject {
  if(!(self.count)) {
    NSLog(@"There's no elements in deque");
  }
  return self.headNode.object;
}

- (id) peakTailObject {
  if(!(self.count)) {
    NSLog(@"There's no elements in deque");
  }
  return self.tailNode.object;}

#pragma mark - NSCopying

-(id)copyWithZone:(NSZone *)zone {
  CCDeque *copy = [[self class] new];
  
  return copy;
}

@end
