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
        _object = object;
    }
    return self;
}

@end
