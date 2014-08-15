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

@property (nonatomic, strong) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *imageURL = [NSURL URLWithString:kImageURLString];
    [UIImage imageWithURL:imageURL completion:^(UIImage *image) {
        self.imageView.image = image;
    }];
}

@end
