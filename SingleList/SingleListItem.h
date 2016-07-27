//
//  SingleListItem.h
//  单链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleListItem : NSObject
@property(nonatomic,strong)SingleListItem *nextItem;
@property(nonatomic,strong)id data;


- (instancetype)next;

@end
