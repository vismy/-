//
//  DoubleList.m
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import "DoubleList.h"

@implementation DoubleList
- (BOOL)isHeaderExist{
    if (self.header) {
        return YES ;
    }else{
        return NO;
    }
}

- (DoubleList *)createDoubleListWithoutHeader{
    DoubleList *dList = [[DoubleList alloc]init];
    dList.header = nil;
    dList.firstItem = nil;
    
    return dList;
}
- (DoubleList *)createDoubleListWithHeader{
    DoubleList *dList = [[DoubleList alloc]init];
    DoubleListItem *header = [[DoubleListItem alloc]init];
    dList.header = header;
    header.nextItem = nil;
    dList.firstItem = header.nextItem;
    
    return dList;
}

- (void)detroyDoubleList{
#warning todo...
}

- (void)addItem:(DoubleListItem *)newItem{
    
}
- (void)deleteItem:(DoubleListItem *)item{
    
}
- (void)updateItemNew:(DoubleListItem *)new AndOld:(DoubleListItem *)old{
    
}
@end
