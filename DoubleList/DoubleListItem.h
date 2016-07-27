//
//  DoubleListItem.h
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DoubleListItem : NSObject
@property(nonatomic,strong)DoubleListItem *nextItem;
@property(nonatomic,strong)DoubleListItem *previous;
@property(nonatomic,strong)id data;


- (instancetype)next;
- (instancetype)previous;

@end
