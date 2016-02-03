//
//  main.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCDeque.h"
#import "CCNode.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    CCDeque *testInstance = [[CCDeque alloc] initWithCapacity:10];
    CCNode *testNode = [CCNode new];
    
    for (int i = 0; i<=13; i++) {
    
    [testInstance pushFront:testNode];
    }
    
    NSLog(@"%li", (long)testInstance.count);
  }
  return 0;
}
