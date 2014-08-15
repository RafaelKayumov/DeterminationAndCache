//
//  ViewController.m
//  test
//
//  Created by Rafael Kayumov on 15/08/14.
//  Copyright (c) 2014 Rafael Kayumov. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Cache.h"

static NSString *kImageURLString = @"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNJANvj2-ddMuhKfUsBDd-zzdSuXdhdVbOA4thfeUjZVYB7yfwgQ";

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width/2, self.view.bounds.size.height/2)];
    imageView.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
    [self.view addSubview:imageView];
    
    NSURL *imageURL = [NSURL URLWithString:kImageURLString];
    __block UIImage *image = [UIImage imageWithCachedURL:imageURL];
    
    if (!image) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSData *data = [NSData dataWithContentsOfURL:imageURL];
            image = [UIImage imageWithData:data];
            [image cacheWithURL:imageURL];
            dispatch_async(dispatch_get_main_queue(), ^{
                imageView.image = image;
                NSLog(@"Image loaded from url");
            });
        });
    } else {
        imageView.image = image;
        NSLog(@"Image loaded from cache");
    }
}

@end
