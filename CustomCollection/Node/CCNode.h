//
//  CCNode.h
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCNode : NSObject

@property (nonatomic) CCNode *nextNode;
@property (nonatomic) CCNode *previousNode;
@property (nonatomic) id object;

@end
