//
//  DataItemCollectionViewCell.m
//  AppleTV_P
//
//  Created by xqzh on 16/11/6.
//  Copyright © 2016年 xqzh. All rights reserved.
//

#import "DataItemCollectionViewCell.h"
#import "DataItem.h"

@interface DataItemCollectionViewCell ()



@end

@implementation DataItemCollectionViewCell

- (void)awakeFromNib {
  [super awakeFromNib];
  
  self.contentImg.adjustsImageWhenAncestorFocused = true;
  self.contentImg.clipsToBounds = false;
}

- (void)prepareForReuse {
  [super prepareForReuse];
  self.contentLabel.alpha = 0.0;
}

- (void)didUpdateFocusInContext:(UIFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator {
  
  [coordinator addCoordinatedAnimations:^{
    if (self.isFocused) {
      self.contentLabel.alpha = 1.0;
    }
    else {
      self.contentLabel.alpha = 0.0;
    }
  } completion:nil];
}

- (void)setContent:(DataItem *)item {
  [self.contentImg setImage:[UIImage imageNamed:item.title]];
  self.contentLabel.text = item.title;
}

@end
