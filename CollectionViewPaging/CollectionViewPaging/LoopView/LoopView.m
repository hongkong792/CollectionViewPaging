

//
//  LoopView.m
//  CollectionViewPaging
//
//  Created by 杨香港 on 2017/1/15.
//  Copyright © 2017年 杨香港. All rights reserved.
//

#import "LoopView.h"
@interface LoopView()
{
    NSArray<NSURL *>* _urls;
    
}


@end



@implementation LoopView

- (instancetype)initWithURLs:(NSArray<NSURL *>*)urls
{
    self = [super initWithFrame:CGRectZero collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    if (self) {
        _urls = urls;
    }
    return self;
}
@end
