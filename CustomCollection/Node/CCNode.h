//
//  CCNode.h
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCNode : NSObject

@property (nonatomic) id nextObject;
@property (nonatomic) id previousObject;
@property (nonatomic) id valueOfObject;

@end
