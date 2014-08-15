//
//  CacheImpelmentation.h
//  test
//
//  Created by Rafael Kayumov on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CacheImpelmentation : NSCache

+ (CacheImpelmentation *)sharedInstance;

+ (void)cacheImage:(UIImage *)image withURL:(NSURL *)url;
+ (UIImage *)cachedImageWithURL:(NSURL *)url;

- (UIImage *)cachedImageForURL:(NSURL *)url;
- (void)cacheImage:(UIImage *)image forURL:(NSURL *)url;

@end
