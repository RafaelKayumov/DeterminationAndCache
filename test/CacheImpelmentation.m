//
//  CacheImpelmentation.m
//  test
//
//  Created by Rafael Kayumov on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import "CacheImpelmentation.h"

@implementation CacheImpelmentation

+ (CacheImpelmentation *)sharedInstance {
    static CacheImpelmentation * shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[super alloc] init];
    });
    return shared;
}

+ (NSString *)storePath {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

+ (NSString *)imagePathWithURL:(NSURL *)url {
    NSArray *parts = [url.absoluteString componentsSeparatedByString:@"/"];
    NSString *filename = [parts lastObject];
    return [[self storePath] stringByAppendingPathComponent:filename];
}

#pragma mark - use disc

+ (void)cacheImage:(UIImage *)image withURL:(NSURL *)url {
    NSData *imageData = UIImagePNGRepresentation(image);
    [imageData writeToFile:[self imagePathWithURL:url] atomically:YES];
}

+ (UIImage *)cachedImageWithURL:(NSURL *)url {
    return [UIImage imageWithContentsOfFile:[self imagePathWithURL:url]];
}

#pragma mark - use NSCache

- (UIImage *)cachedImageForURL:(NSURL *)url {
	return [self objectForKey:url.absoluteString];
}

- (void)cacheImage:(UIImage *)image forURL:(NSURL *)url {
    if (image && url) {
        [self setObject:image forKey:url.absoluteString];
    }
}

@end
