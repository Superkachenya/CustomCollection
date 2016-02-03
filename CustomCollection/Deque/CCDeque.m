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

@property (nonatomic) NSUInteger maxCapacity;

@property (nonatomic) CCNode *headNode;
@property (nonatomic) CCNode *taleNode;


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
    self.maxCapacity = capacity;
  }
  return self;
}

#pragma mark - push methods
- (void)pushBack:(id)object {
  
  if (self.count >= self.maxCapacity) {
    NSLog(@"ALARMA!!! You're beyond bounds");
  } else {
    
    self.taleNode = [CCNode new];
    self.taleNode.valueOfObject = object;
    self.count++;
  }
}

- (void)pushFront:(id)object {
  
  if (self.count >= self.maxCapacity) {
    NSLog(@"ALARMA!!! You're beyond bounds");
  } else {
    
    self.headNode = [CCNode new];
    self.headNode.valueOfObject = object;
    self.count++;
  }
}

#pragma mark - pop methods
- (id)popBack:(id)object {
  
  self.count--;
  return object;
}

- (id)popFront:(id)object {
  
  self.count--;
  return object;
}

#pragma mark - peak methods
- (id) peakHeadObject {
  
  if((self.headNode.valueOfObject == nil)) {
    NSLog(@"There's no elements in deque");
  }
  return self.headNode.valueOfObject;
}

- (id) peakTaleObject {
  
  if((self.taleNode.valueOfObject == nil)) {
    NSLog(@"There's no elements in deque");
  }
  return self.taleNode.valueOfObject;}

@end
