//
//  LoopViewCell.m
//  CollectionViewPaging
//
//  Created by 杨香港 on 2017/1/16.
//  Copyright © 2017年 杨香港. All rights reserved.
//

#import "LoopViewCell.h"
@interface LoopViewCell()
{
    UIImageView * _imageView;
    
}
@end
@implementation LoopViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView  = [[UIImageView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:_imageView];
    }
    return self;
}

- (void)setUrl:(NSURL *)url
{
    NSData * data = [NSData dataWithContentsOfURL:url];
    UIImage * image = [UIImage imageWithData:data];
    _imageView.image = image;
}

@end
