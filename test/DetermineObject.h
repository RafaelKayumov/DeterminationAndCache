//
//  DetermineObject.h
//  test
//
//  Created by RealPoc on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DetermineObject : NSObject

+ (Class)determineClassOfUnknownObject:(id)object;
+ (BOOL)unknownObject:(id)object conformsToProtocol:(Protocol *)protocol;
+ (BOOL)unknownObject:(id)object respondsToSelector:(SEL)selector;

@end
