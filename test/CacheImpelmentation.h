//
//  CacheImpelmentation.h
//  test
//
//  Created by Rafael Kayumov on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CacheImpelmentation : NSObject

+ (void)cacheFileData:(NSData *)data withURL:(NSURL *)url;
+ (NSData *)cachedFileDataWithURL:(NSURL *)url;

@end
