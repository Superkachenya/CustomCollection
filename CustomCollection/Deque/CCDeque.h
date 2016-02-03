//
//  CCDeque.h
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCDeque : NSObject

@property (nonatomic, readonly) NSInteger count;
@property (nonatomic, readonly) id peakFrontObject;
@property (nonatomic, readonly) id peakBackObject;

#pragma mark - required initializer
- (instancetype)initWithCapacity:(NSInteger)capacity;

#pragma mark - push methods
- (void)pushBack:(id)object;
- (void)pushFront:(id)object;

#pragma mark - pop methods
- (void)popBack:(id)object;
- (void)popFront:(id)object;

@end
