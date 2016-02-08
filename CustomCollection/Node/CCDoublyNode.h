//
//  CCNode.h
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCDoublyNode : NSObject <NSCopying, NSCoding>

@property (strong, nonatomic) CCDoublyNode *nextNode;
@property (weak, nonatomic) CCDoublyNode *previousNode;
@property (strong, nonatomic) id object;

@end
