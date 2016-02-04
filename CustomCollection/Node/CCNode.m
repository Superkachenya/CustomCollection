//
//  CCNode.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCNode.h"

NSString *const kCCNodeNextNodeKey = @"CCNodeNextNodeKey";
NSString *const kCCNodePreviousNodeKey = @"CCNodePreviousNodeKey";
NSString *const kCCNodeObjectKey = @"CCNodeObjectKey";


@implementation CCNode

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
  CCNode *copy = [[self class] new];
  copy.nextNode = self.nextNode;
  copy.previousNode = self.previousNode;
  copy.object = self.object;
  return copy;
}

#pragma mark - NSCoding

- (void)encodeWithCoder:(NSCoder *)aCoder {
  [aCoder encodeObject:self.nextNode forKey:kCCNodeNextNodeKey];
  [aCoder encodeObject:self.previousNode forKey:kCCNodePreviousNodeKey];
  [aCoder encodeObject:self.object forKey:kCCNodeObjectKey];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self.nextNode = [aDecoder decodeObjectForKey:kCCNodeNextNodeKey];
  self.previousNode = [aDecoder decodeObjectForKey:kCCNodePreviousNodeKey];
  self.object = [aDecoder decodeObjectForKey:kCCNodeObjectKey];
  return self;
}

@end
