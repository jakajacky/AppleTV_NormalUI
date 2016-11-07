//
//  CollectionViewContainerCell.m
//  AppleTV_P
//
//  Created by xqzh on 16/11/5.
//  Copyright © 2016年 xqzh. All rights reserved.
//

#import "CollectionViewContainerCell.h"
#import "DataItemCollectionViewCell.h"
#import "TestSelectedViewController.h"

@interface CollectionViewContainerCell () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) NSArray *dataItems;

@end

@implementation CollectionViewContainerCell

- (void)configure:(NSArray *)items {
  self.dataItems = items;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return self.dataItems.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  return [collectionView dequeueReusableCellWithReuseIdentifier:@"DataItemCollectionViewCell" forIndexPath:indexPath];
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
  DataItemCollectionViewCell *dCell = (DataItemCollectionViewCell *)cell;
  DataItem *item = self.dataItems[indexPath.row];
  [dCell setContent:item];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  
  // 选中 推出另一个页面
  TestSelectedViewController *test = [[TestSelectedViewController alloc] init];
  [self.window.rootViewController presentViewController:test animated:YES completion:^{
    
  }];
}

@end
