//
//  DataItem.m
//  AppleTV_P
//
//  Created by xqzh on 16/11/6.
//  Copyright © 2016年 xqzh. All rights reserved.
//

#import "DataItem.h"

@implementation DataItem

- (instancetype)initWithGroup:(Group)group andNum:(NSInteger)num andTitle:(NSString *)title {
  self = [super init];
  if (self) {
    _group = group;
    _num   = num;
    _title = title;
  }
  return self;
}

@end
