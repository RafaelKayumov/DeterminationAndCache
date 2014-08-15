//
//  UIImage+Cache.m
//  test
//
//  Created by Rafael Kayumov on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import "UIImage+Cache.h"
#import "CacheImpelmentation.h"

@implementation UIImage (Cache)

+ (UIImage *)imageWithCachedURL:(NSURL *)url {
    return [CacheImpelmentation cachedImageWithURL:url];
}

- (void)cacheWithURL:(NSURL *)url {
    [CacheImpelmentation cacheImage:self withURL:url];
}

@end
