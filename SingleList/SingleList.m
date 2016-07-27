//
//  SingleList.m
//  链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import "SingleList.h"

@implementation SingleList
- (BOOL)isHeaderExist{
    if (self.header) {
        return YES;
    }else{
        return NO;
    }
}

+ (SingleList *)createSingleListWithoutHeader{
    SingleList *sList = [[SingleList alloc]init];
    sList.header = nil;
    sList.firstItem = nil;
    return sList;
}

+ (SingleList *)createSingleListWithHeader{
    SingleList *sList = [[SingleList alloc]init];
    SingleListHeader *header = [[SingleListHeader alloc]init];
    sList.header = header;
    header.next = nil;
    sList.firstItem = header.next;
    
    return sList;
}

- (void)detroySingleList{
    

}

// 递归置空
- (void)recursion:(SingleListItem *)item{
    if (item != nil) {
        SingleListItem *nextItem = item.next;
        [self recursion:nextItem];
        item = nil;
    }
}

- (void)addItem:(SingleListItem *)newItem{
    SingleListItem *item = nil;
    if (self.header) {
        item = self.header.next;
        if (item == nil) {
            self.firstItem = newItem;
            self.header.next = self.firstItem;
            newItem.nextItem = nil;
            
            return;
        }
    }else{
        item = self.firstItem;
        if (item == nil) {
            self.firstItem = newItem;
            newItem.nextItem = nil;
        }
    }
    
    while (item.nextItem != nil) {
        item = item.nextItem;
    }
    
    item.nextItem = newItem;
    newItem.nextItem = nil;
}



- (void)deleteItem:(SingleListItem *)item{
    SingleListItem *previousItem = nil;
    SingleListItem *currentItem = nil;
    
    if (self.header) {
        previousItem = self.header.next;
        currentItem = self.header.next;
    }else{
        previousItem = self.firstItem;
        currentItem = self.firstItem;
    }
    
    while (currentItem != item && currentItem != nil) {
        previousItem = currentItem;
        currentItem = item.nextItem;
    }
    
    if (currentItem == nil) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"item不存在，无法完成操作" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }else{
        previousItem.nextItem = currentItem.nextItem;
        currentItem = nil;
    }
}

- (void)updateItemNew:(SingleListItem *)new AndOld:(SingleListItem *)old{
    SingleListItem *currentItem = nil;
    
    if (self.header) {
        currentItem = self.header.next;
    }else{
        currentItem = self.firstItem;
    }
    
    while (currentItem != old && currentItem != nil) {
        currentItem = old.nextItem;
    }
    
    if (currentItem == nil) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"item不存在，无法完成操作" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }else{
        old.data = new.data;
    }

}

- (void)logList{
    NSString *str = nil;
    SingleListItem *item = nil;
    if (self.header) {
        str = @"header";
        item = self.header.next;
    }else{
        str = @"nil";
        item = self.firstItem;
    }
    
    while (item != nil) {
        str = [str stringByAppendingFormat:@" -> %@",item.data];
        item = item.nextItem;
    }
    NSLog(@"list:%@",str);
    
}

@end
