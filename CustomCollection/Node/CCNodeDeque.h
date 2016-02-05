//
//  CCNode.h
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCNodeDeque : NSObject <NSCopying, NSCoding>

@property (nonatomic) CCNodeDeque *nextNode;
@property (nonatomic) CCNodeDeque *previousNode;
@property (nonatomic) id object;

@end
