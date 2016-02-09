//
//  CCNode.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCDoublyNode.h"

NSString *const kCCNodeNextNodeKey = @"CCNodeNextNodeKey";
NSString *const kCCNodePreviousNodeKey = @"CCNodePreviousNodeKey";
NSString *const kCCNodeObjectKey = @"CCNodeObjectKey";

@implementation CCDoublyNode

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    CCDoublyNode *copy = [[[self class] allocWithZone:zone] init];
    copy.nextNode = self.nextNode;
    copy.previousNode = self.previousNode;
    copy.object = self.object;
    return copy;
}

#pragma mark - NSCoding

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.nextNode forKey:kCCNodeNextNodeKey];
    [coder encodeObject:self.previousNode forKey:kCCNodePreviousNodeKey];
    [coder encodeObject:self.object forKey:kCCNodeObjectKey];
}

- (instancetype)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.nextNode = [decoder decodeObjectForKey:kCCNodeNextNodeKey];
        self.previousNode = [decoder decodeObjectForKey:kCCNodePreviousNodeKey];
        self.object = [decoder decodeObjectForKey:kCCNodeObjectKey];
    }
    return self;
}

@end
