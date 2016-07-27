//
//  CircleList.h
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CircleListItem.h"
#import "CircleListHeader.h"

@interface CircleList : NSObject
@property(nonatomic,strong)CircleListItem *header;
@property(nonatomic,assign)BOOL isHeader;

- (BOOL)isHeaderExist;

- (CircleList *)createCircleListWithoutHeader;
- (CircleList *)createCircleListWithHeader;
- (void)destroyCircleList;

- (void)addItem:(CircleListItem *)newItem;
- (void)deleteItem:(CircleListItem *)item;
- (void)updateItemNew:(CircleListItem *)new AndOld:(CircleListItem *)old;

@end
