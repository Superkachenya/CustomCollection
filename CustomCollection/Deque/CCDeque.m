//
//  CCDeque.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCDeque.h"
#import "CCNode.h"

@interface CCDeque ()

@property (nonatomic) NSUInteger capacity;

@property (nonatomic) CCNode *headNode;
@property (nonatomic) CCNode *tailNode;


@property (nonatomic, readwrite) NSInteger count;


@end

@implementation CCDeque


#pragma mark - initializers

- (instancetype)init {
  return nil;
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
    if (!(self.headNode)) {
      self.headNode = [CCNode new];
      self.headNode.nextNode = nil;
      self.headNode.previousNode = nil;
      self.tailNode = self.headNode;
    }
    self.headNode.previousNode = self.tailNode;
    self.headNode.object = object;
    self.count++;
    
  }
}

- (void)pushBack:(id)object {
  
  if (self.count >= self.capacity) {
    NSLog(@"ALARM!!! You're beyond bounds");
  } else {
    
    self.tailNode = [CCNode new];
    self.tailNode.object = object;
    self.count++;
  }
}

#pragma mark - pop methods

- (id)popFront {
  
  self.count--;
  return nil;
}

- (id)popBack {
  
  self.count--;
  return nil;
}

#pragma mark - peak methods

- (id) peakHeadObject {
  
  if(!(self.headNode.object)) {
    NSLog(@"There's no elements in deque");
  }
  return self.headNode.object;
}

- (id) peakTailObject {
  
  if((self.tailNode.object == nil)) {
    NSLog(@"There's no elements in deque");
  }
  return self.tailNode.object;}

@end
