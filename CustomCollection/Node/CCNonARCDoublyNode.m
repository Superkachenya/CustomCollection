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

-(void)setNextNode:(CCNonARCDoublyNode *)nextNode {
    [nextNode retain];
    [_nextNode release];
    _nextNode = nextNode;
}

#pragma mark - Debug methods

- (void)dealloc {
    NSLog(@"BYE BYE NODE %li", [self retainCount]);
    [super dealloc];
}

- (instancetype)retain {
    self = [super retain];
    NSLog(@"%li NODE LINK COUNT RETAIN", [self retainCount]);
    return self;
}

- (oneway void)release {
    NSLog(@"%li NODE LINK COUNT RELEASE", [self retainCount]);
    [super release];
}

@end
