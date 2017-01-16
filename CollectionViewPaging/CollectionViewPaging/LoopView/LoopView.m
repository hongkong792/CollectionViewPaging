

//
//  LoopView.m
//  CollectionViewPaging
//
//  Created by 杨香港 on 2017/1/15.
//  Copyright © 2017年 杨香港. All rights reserved.
//

#import "LoopView.h"
#import "LoopViewLayout.h"
#import "LoopViewCell.h"
NSString *const collectionCellID = @"collectionCellID";
@interface LoopView()<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSArray<NSURL *>* _urls;
    
}
@end



@implementation LoopView

- (instancetype)initWithURLs:(NSArray<NSURL *>*)urls
{
    self = [super initWithFrame:CGRectZero collectionViewLayout:[[LoopViewLayout alloc] init]];
    if (self) {
        _urls = urls;
        self.dataSource  = self;
        self.delegate = self;
        [self registerClass:[LoopViewCell class] forCellWithReuseIdentifier:collectionCellID];
        dispatch_async(dispatch_get_main_queue(), ^{
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:_urls.count inSection:0];
            [self scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionLeft animated:YES];
        });
    }
    return self;
}
#pragma mark UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _urls.count*2;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LoopViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionCellID forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0];
    cell.url = _urls[indexPath.item %_urls.count];
    return cell;    
}

#pragma mark UICollectionViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //获取当前停止的页面
    NSInteger offset = scrollView.contentOffset.x / scrollView.bounds.size.width;
    if (offset ==0 || offset == [self numberOfItemsInSection:0] - 1) {
        NSLog(@"%zd",offset);
        
        if (offset == 0) {
            offset = _urls.count;
        }else{
            offset =_urls.count - 1;
        }
        scrollView.contentOffset = CGPointMake(offset*scrollView.bounds.size.width, 0);
    }
    
}

@end
