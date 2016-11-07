//
//  CollectionViewContainerViewController.m
//  AppleTV_P
//
//  Created by xqzh on 16/11/5.
//  Copyright © 2016年 xqzh. All rights reserved.
//

#import "CollectionViewContainerViewController.h"
#import "CollectionViewContainerCell.h"
#import "DataItem.h"

#define minimumEdgePadding ((CGFloat)90.0)



@interface CollectionViewContainerViewController ()

@end

@implementation CollectionViewContainerViewController

static NSString * const reuseIdentifier = @"CollectionViewContainerCell";

- (void)viewDidLoad {
    [super viewDidLoad];
  
  
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
//  guard let collectionView = collectionView, let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else { return }
  UICollectionView *collectionView = self.collectionView;
  UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)collectionView.collectionViewLayout;
  
  UIEdgeInsets inset = UIEdgeInsetsMake(minimumEdgePadding - layout.sectionInset.top, collectionView.contentInset.left, minimumEdgePadding - layout.sectionInset.bottom, collectionView.contentInset.right);
  collectionView.contentInset = inset;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 初始化数据
- (NSDictionary *)dataItemsByGroup {
  NSMutableDictionary *dic = [NSMutableDictionary dictionary];
  
  NSMutableArray *babyArr = [NSMutableArray array];
  for (int i = 1; i <= 8; i++) {
    DataItem *item = [[DataItem alloc] initWithGroup:Baby andNum:i andTitle:[NSString stringWithFormat:@"Baby %d", i]];
    [babyArr addObject:item];
  }
  [dic setObject:babyArr forKey:@"Baby"];
  
  NSMutableArray *iceArr = [NSMutableArray array];
  for (int i = 1; i <= 8; i++) {
    DataItem *item = [[DataItem alloc] initWithGroup:IceLand andNum:i andTitle:[NSString stringWithFormat:@"IceLand %d", i]];
    [iceArr addObject:item];
  }
  [dic setObject:babyArr forKey:@"IceLand"];
  
  
  NSMutableArray *itaArr = [NSMutableArray array];
  for (int i = 1; i <= 8; i++) {
    DataItem *item = [[DataItem alloc] initWithGroup:Italy andNum:i andTitle:[NSString stringWithFormat:@"Italy %d", i]];
    [itaArr addObject:item];
  }
  [dic setObject:babyArr forKey:@"Italy"];
  
  return dic;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

  return self.dataItemsByGroup.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewContainerCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
  
  if (indexPath.section == 0) {
    CollectionViewContainerCell *containerCell = (CollectionViewContainerCell *)cell;
    [containerCell configure: [self.dataItemsByGroup objectForKey:@"Baby"]];
  }
  if (indexPath.section == 1) {
    CollectionViewContainerCell *containerCell = (CollectionViewContainerCell *)cell;
    [containerCell configure: [self.dataItemsByGroup objectForKey:@"IceLand"]];
  }
  if (indexPath.section == 2) {
    CollectionViewContainerCell *containerCell = (CollectionViewContainerCell *)cell;
    [containerCell configure: [self.dataItemsByGroup objectForKey:@"Italy"]];
  }
}

- (BOOL)collectionView:(UICollectionView *)collectionView canFocusItemAtIndexPath:(NSIndexPath *)indexPath {
  return  false;
}


@end
