//
//  ViewController.m
//  DEMO
//
//  Created by soliloquy on 2017/8/21.
//  Copyright © 2017年 soliloquy. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+category.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *l = [UILabel mas_makeCustomlabel:^(UILabel *label) {
        label.tFrame(CGRectMake(10, 100, 300, 100)).tFont(20).tColor([UIColor redColor]).textStr(@"服都是公开活动寺管会我偶的厚厚的回拨后回归hi奥");
    }];
    [self.view addSubview:l];
}


@end
