//
//  CircleListItem.h
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CircleListItem : NSObject
@property(nonatomic,strong)CircleListItem *next;
@property(nonatomic,strong)CircleListItem *previous;
@property(nonatomic,strong)id data;


- (instancetype)next;
- (instancetype)previous;

@end
