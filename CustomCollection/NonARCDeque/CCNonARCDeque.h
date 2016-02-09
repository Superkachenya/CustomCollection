//
//  CCNonARCDeque.h
//  CustomCollection
//
//  Created by Danil on 08.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCNonARCDeque : NSObject

@property (assign, nonatomic, readonly) NSInteger count;

#pragma mark - push methods

- (void)pushFront:(id)object;
- (void)pushBack:(id)object;


#pragma mark - pop methods

- (id)popFront;
- (id)popBack;

#pragma mark - peak methods

- (id)peakHeadObject;
- (id)peakTailObject;

@end
