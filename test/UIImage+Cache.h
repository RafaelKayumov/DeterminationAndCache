//
//  UIImage+Cache.h
//  test
//
//  Created by Rafael Kayumov on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImage (Cache)

+ (UIImage *)imageWithCachedURL:(NSURL *)url;
- (void)cacheWithURL:(NSURL *)url;

@end
