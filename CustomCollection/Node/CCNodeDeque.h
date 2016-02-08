//
//  CCNode.h
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCNodeDeque : NSObject <NSCopying, NSCoding>

@property (strong, nonatomic) CCNodeDeque *nextNode;
@property (weak, nonatomic) CCNodeDeque *previousNode;
@property (strong, nonatomic) id object;

@end

/*
 - (void)removeObject:(id)object {
 CCDoublyNode *tempNode = [[CCDoublyNode alloc] init];
 tempNode = self.head;
 for (int i = 0; i < self.count; i++) {
 if (tempNode.object == object) {
 if (!tempNode.previousNode) {
 self.head = tempNode.nextNode;
 } else {
 tempNode.previousNode.nextNode = tempNode.nextNode;
 }
 if (!tempNode.nextNode) {
 self.tail = tempNode.previousNode;
 } else {
 tempNode.nextNode.previousNode = tempNode.previousNode;
 }
 tempNode.nextNode = nil;
 tempNode = tempNode.previousNode;
 tempNode.previousNode.nextNode = nil;
 self.count--;
 i--;
 }
 tempNode = tempNode.nextNode;
 }
 }
*/