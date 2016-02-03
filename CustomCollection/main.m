//
//  main.m
//  CustomCollection
//
//  Created by Danil on 03.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCDeque.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    CCDeque *testInstance = [[CCDeque alloc] initWithCapacity:12];
    
    NSLog(@"%li", (long)testInstance.count);
  }
  return 0;
}
