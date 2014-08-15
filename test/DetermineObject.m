//
//  DetermineObject.m
//  test
//
//  Created by RealPoc on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import "DetermineObject.h"

@implementation DetermineObject

+ (Class)determineClassOfUnknownObject:(id)object {
    return [object class];
}

+ (BOOL)unknownObject:(id)object conformsToProtocol:(Protocol *)protocol {
    return [object conformsToProtocol:protocol];
}

+ (BOOL)unknownObject:(id)object respondsToSelector:(SEL)selector {
    return [object respondsToSelector:selector];
}

@end
