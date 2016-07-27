//
//  SingleListHeader.h
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingleListItem.h"

@interface SingleListHeader : NSObject
@property(nonatomic,strong)SingleListItem *next;
@end
