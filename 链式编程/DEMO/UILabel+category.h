//
//  UILabel+category.h
//  DEMO
//
//  Created by soliloquy on 2017/8/21.
//  Copyright © 2017年 soliloquy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (category)

- (UILabel *)mas_makeCustomlabel:(void(^)(UILabel *label))block;
+ (UILabel *)mas_makeCustomlabel:(void(^)(UILabel *label))block;
- (UILabel *(^)(NSString *str))textStr;
- (UILabel *(^)(UIColor *tColor))tColor;
- (UILabel *(^)(NSInteger tFont))tFont;
- (UILabel *(^)(CGRect tFrame))tFrame;
@end
