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

+ (void)imageWithURL:(NSURL *)url completion:(void (^)(UIImage *image))completion {
    __block UIImage *image = [self cachedImageWithURL:url];
    
    if (!image) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSData *data = [NSData dataWithContentsOfURL:url];
            image = [UIImage imageWithData:data];
            [image cacheWithURL:url];
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"Image loaded from URL");
                if (completion) {
                    completion(image);
                }
            });
        });
    } else {
        NSLog(@"Image loaded from cache");
        if (completion) {
            completion(image);
        }
    }
}

- (void)cacheWithURL:(NSURL *)url {
    NSData *imageData = UIImagePNGRepresentation(self);
    [CacheImpelmentation cacheFileData:imageData withURL:url];
}

+ (UIImage *)cachedImageWithURL:(NSURL *)url {
    return [UIImage imageWithData:[CacheImpelmentation cachedFileDataWithURL:url]];
}

@end
