//
//  CCNodeList.h
//  CustomCollection
//
//  Created by Danil on 05.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCSinglyNode : NSObject

@property (strong, nonatomic) CCSinglyNode *nextNode;
@property (strong, nonatomic) id object;

@end
