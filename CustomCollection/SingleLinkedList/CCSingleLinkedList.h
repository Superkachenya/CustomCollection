//
//  CCSingleLinkedList.h
//  CustomCollection
//
//  Created by Danil on 05.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCSingleLinkedList : NSObject

@property (nonatomic, readonly) NSInteger count;

#pragma mark - Required initializer

- (instancetype)initWithCapacity:(NSInteger)capacity;

#pragma mark - Addition methods

- (void)addObject:(id)object;
- (void)insertObject:(id)object atIndex:(NSInteger)index;

#pragma mark - Remove methods

- (void)removeObject:(id)object;
- (void)removeObjectAtIndex:(NSInteger)index;

#pragma mark - Get object method

- (id)objectAtIndex:(NSInteger)index;

@end
