
//
//  LoopViewLayout.m
//  CollectionViewPaging
//
//  Created by 杨香港 on 2017/1/16.
//  Copyright © 2017年 杨香港. All rights reserved.
//

#import "LoopViewLayout.h"

@implementation LoopViewLayout
- (void)prepareLayout
{
    [super prepareLayout];
    NSLog(@"view:%@",self.collectionView);
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = self.collectionView.bounds.size;
    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
    self.collectionView.bounces = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.pagingEnabled = YES;
    
    
}
@end
