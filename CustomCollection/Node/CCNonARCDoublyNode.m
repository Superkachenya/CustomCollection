//
//  CCNonArcDoublyNode.m
//  CustomCollection
//
//  Created by Danil on 08.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "CCNonARCDoublyNode.h"

@implementation CCNonARCDoublyNode

- (instancetype)initWithObject:(id)object {
    if (self = [super init]) {
        self.object = object;
    }
    return self;
}

-(void)setObject:(id)object {
    [object retain];
    [_object release];
    _object = object;
}

-(void)setNextNode:(CCNonARCDoublyNode *)nextNode {
    [nextNode retain];
    [_nextNode release];
    _nextNode = nextNode;
}

@end
