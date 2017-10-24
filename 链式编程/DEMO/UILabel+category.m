//
//  UILabel+category.m
//  DEMO
//
//  Created by soliloquy on 2017/8/21.
//  Copyright © 2017年 soliloquy. All rights reserved.
//

#import "UILabel+category.h"

@implementation UILabel (category)

- (UILabel *)mas_makeCustomlabel:(void(^)(UILabel *label))block {
    block(self);
    return self;
}

+ (UILabel *)mas_makeCustomlabel:(void(^)(UILabel *label))block {
    UILabel *l = [[UILabel alloc]init];
    block(l);
    return l;
}

- (UILabel *(^)(NSString *str))textStr {
    return ^(NSString *str) {
        self.text = str;
        return self;
    };
}

- (UILabel *(^)(UIColor *tColor))tColor {
    return ^(UIColor *c){
        self.textColor = c;
        return self;
    };
}

- (UILabel *(^)(NSInteger tFont))tFont {
    return ^(NSInteger f) {
        self.font = [UIFont systemFontOfSize:f];
        return self;
    };
}

- (UILabel *(^)(CGRect tFrame))tFrame {
    return ^(CGRect tFrame) {
        self.frame = tFrame;
        return self;
    };
}

@end
