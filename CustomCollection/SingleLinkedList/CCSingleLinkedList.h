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



- (instancetype)initWithCapacity:(NSInteger)capacity;

- (void)addObject:(id)object;
- (id)objectAtIndex:(NSUInteger)index;
- (void)insertObject:(id)object atIndex:(NSUInteger)index;
- (void)removeObject:(id)object;
- (void)removeObjectAtIndex:(NSUInteger)index;


@end
