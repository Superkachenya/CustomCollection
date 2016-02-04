//
//  CCDeque.h
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCDeque : NSObject <NSCopying, NSCoding>

@property (nonatomic, readonly) NSInteger count;

#pragma mark - required initializer

- (instancetype)initWithCapacity:(NSInteger)capacity;

#pragma mark - push methods

- (void)pushFront:(id)object;
- (void)pushBack:(id)object;


#pragma mark - pop methods

- (id)popFront;
- (id)popBack;

#pragma mark - peak methods

- (id) peakHeadObject;
- (id) peakTailObject;

@end
