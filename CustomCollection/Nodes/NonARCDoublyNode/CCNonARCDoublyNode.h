//
//  CCNonArcDoublyNode.h
//  CustomCollection
//
//  Created by Danil on 08.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCNonARCDoublyNode : NSObject

@property (retain, nonatomic) id object;
@property (retain, nonatomic) CCNonARCDoublyNode *nextNode;
@property (assign, nonatomic) CCNonARCDoublyNode *previousNode;

- (instancetype)initWithObject:(id)object;

@end
