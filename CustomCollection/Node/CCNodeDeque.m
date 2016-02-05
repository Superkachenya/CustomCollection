//
//  CCNode.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCNodeDeque.h"

NSString *const kCCNodeNextNodeKey = @"CCNodeNextNodeKey";
NSString *const kCCNodePreviousNodeKey = @"CCNodePreviousNodeKey";
NSString *const kCCNodeObjectKey = @"CCNodeObjectKey";


@implementation CCNodeDeque

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    CCNodeDeque *copy = [[[self class] allocWithZone:zone] init];
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
    self = [super init];
    if (self) {
        self.nextNode = [aDecoder decodeObjectForKey:kCCNodeNextNodeKey];
        self.previousNode = [aDecoder decodeObjectForKey:kCCNodePreviousNodeKey];
        self.object = [aDecoder decodeObjectForKey:kCCNodeObjectKey];
    }
    return self;
}

@end