//
//  ViewController.m
//  单链表
//
//  Created by macPro on 16/7/25.
//  Copyright © 2016年 macPro. All rights reserved.
//

#import "ViewController.h"
#import "SingleList.h"
#import "SingleListItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SingleList *list = [SingleList createSingleListWithHeader];
    for (int i=0; i<10; i++) {
        SingleListItem *item = [[SingleListItem alloc]init];
        item.data = [NSString stringWithFormat:@"%d",i];
        
        [list addItem:item];
        
    }
    [list logList];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
