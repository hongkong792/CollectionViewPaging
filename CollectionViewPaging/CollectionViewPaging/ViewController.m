//
//  ViewController.m
//  CollectionViewPaging
//
//  Created by 杨香港 on 2017/1/15.
//  Copyright © 2017年 杨香港. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "LoopView.h"


@interface ViewController ()

@end

@implementation ViewController{
    NSArray <NSURL *>*_urls;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadData];
    LoopView * loopView = [[LoopView alloc] initWithURLs:_urls];
    loopView.frame = CGRectMake(20, 20, self.view.bounds.size.width - 40, 200);
    [self.view addSubview:loopView];
    
}

- (void)loadData
{
    NSMutableArray * mutableArr = [NSMutableArray array];
    for (int i= 0; i<3; i++) {
        NSString * fileName = [NSString stringWithFormat:@"%02zd.jpg",i+1];
        NSURL * url = [[NSBundle mainBundle] URLForResource:fileName withExtension:nil];
        NSString * path = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
        [mutableArr addObject:url];

    }
    _urls = mutableArr.copy;
}

@end
