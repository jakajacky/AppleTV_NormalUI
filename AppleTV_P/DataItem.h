//
//  DataItem.h
//  AppleTV_P
//
//  Created by xqzh on 16/11/6.
//  Copyright © 2016年 xqzh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
  Baby,
  IceLand,
  Italy,
  Lola,
} Group;

@interface DataItem : NSObject

@property (nonatomic, assign) Group group;

@property (nonatomic, assign) NSInteger num;

@property (nonatomic, strong) NSString *title;

- (instancetype)initWithGroup:(Group)group andNum:(NSInteger)num andTitle:(NSString *)title;

@end
