//
//  CCDeque.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCDeque.h"

@interface CCDeque ()

@property (nonatomic) NSUInteger maxCapacity;

@end

@implementation CCDeque


#pragma mark - initializers
- (instancetype)init
{
  return nil;
}

- (instancetype)initWithCapacity:(NSInteger)capacity
{
  self = [super init];
  if (self) {
    _maxCapacity = capacity;
  }
  return self;
}

#pragma mark - push methods
- (void)pushBack:(id)object
{
  if (self.count > self.maxCapacity) {
    NSLog(@"ALARMA!!! You're beyond bounds");
    return;
  }
  
  _count++;
}
- (void)pushFront:(id)object {
  
  if (self.count > self.maxCapacity) {
    NSLog(@"ALARMA!!! You're beyond bounds");
    return;
  }
  _count++;
}

#pragma mark - pop methods
- (void)popBack:(id)object
{
  _count --;
}
- (void)popFront:(id)object
{
  _count--;
}

@end
