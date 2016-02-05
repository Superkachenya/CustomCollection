//
//  CCNodeList.h
//  CustomCollection
//
//  Created by Danil on 05.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCNodeList : NSObject

@property (nonatomic) CCNodeList *nextNode;
@property (nonatomic) id object;

@end
