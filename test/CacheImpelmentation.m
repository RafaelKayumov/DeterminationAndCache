//
//  CacheImpelmentation.m
//  test
//
//  Created by Rafael Kayumov on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import "CacheImpelmentation.h"
#import "NSString+MD5.h"

@implementation CacheImpelmentation

+ (NSString *)storePath {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
}

+ (NSString *)dataPathWithURL:(NSURL *)url {
    NSString *filename = [url.absoluteString MD5Hash];
    return [[self storePath] stringByAppendingPathComponent:filename];
}

+ (void)cacheFileData:(NSData *)data withURL:(NSURL *)url {
    if (data && url) {
        [data writeToFile:[self dataPathWithURL:url] atomically:YES];
    }
}

+ (NSData *)cachedFileDataWithURL:(NSURL *)url {
    return [NSData dataWithContentsOfFile:[self dataPathWithURL:url]];
}

@end
