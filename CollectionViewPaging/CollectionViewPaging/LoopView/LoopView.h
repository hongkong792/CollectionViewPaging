//
//  LoopView.h
//  CollectionViewPaging
//
//  Created by 杨香港 on 2017/1/15.
//  Copyright © 2017年 杨香港. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface LoopView : UICollectionView
- (instancetype)initWithURLs:(NSArray<NSURL *>*)urls;
@end
