//
//  DoubleList.h
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DoubleListItem.h"
#import "DoubleListHeader.h"

@interface DoubleList : NSObject
@property(nonatomic,strong)DoubleListItem *header;
@property(nonatomic,strong)DoubleListItem *firstItem;
@property(nonatomic,assign)BOOL isHeader;

- (BOOL)isHeaderExist;

- (DoubleList *)createDoubleListWithoutHeader;
- (DoubleList *)createDoubleListWithHeader;
- (void)detroyDoubleList;

- (void)addItem:(DoubleListItem *)newItem;
- (void)deleteItem:(DoubleListItem *)item;
- (void)updateItemNew:(DoubleListItem *)new AndOld:(DoubleListItem *)old;


@end
