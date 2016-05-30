//
//  TestOC.m
//  HybirdC
//
//  Created by fish on 16/5/15.
//  Copyright © 2016年 fish group. All rights reserved.
//

#import "TestOCViewController.h"

@implementation TestOCViewController
- (void)viewDidLoad {
    UILabel *label = [UILabel new];
    [label setFrame:self.view.bounds];
    label.text = @"这是一个OC控制器";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
