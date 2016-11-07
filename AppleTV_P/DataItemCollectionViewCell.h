//
//  DataItemCollectionViewCell.h
//  AppleTV_P
//
//  Created by xqzh on 16/11/6.
//  Copyright © 2016年 xqzh. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataItem;

@interface DataItemCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *contentImg;

@property (strong, nonatomic) IBOutlet UILabel *contentLabel;


@property (nonatomic, strong) DataItem* representedDataItem;

- (void)setContent:(DataItem *)item;

@end
