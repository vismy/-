//
//  SingleList.h
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SingleListItem.h"
#import "SingleListHeader.h"

@interface SingleList : NSObject
@property(nonatomic,strong)SingleListHeader *header;
@property(nonatomic,strong)SingleListItem *firstItem;
//判断表头是否存在
- (BOOL)isHeaderExist;
//创建无表头链表
+ (SingleList *)createSingleListWithoutHeader;
//创建含表头链表
+ (SingleList *)createSingleListWithHeader;
//销毁链表
- (void)detroySingleList;
//添加链表元素
- (void)addItem:(SingleListItem *)newItem;
//删除链表元素
- (void)deleteItem:(SingleListItem *)item;
//修改链表元素内容
- (void)updateItemNew:(SingleListItem *)new AndOld:(SingleListItem *)old;

//打印链表
- (void)logList;

@end
