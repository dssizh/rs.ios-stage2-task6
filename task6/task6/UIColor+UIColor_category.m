//
//  UIColor+UIColor_category.m
//  task6
//
//  Created by Dmitriy Sutygin on 24.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import "UIColor+UIColor_category.h"

@implementation UIColor (UIColor_category)

// takes @"#123456"
+ (UIColor *)colorWithHexString:(NSString *)str {
    const char *cStr = [str cStringUsingEncoding:NSASCIIStringEncoding];
    long x = strtol(cStr+1, NULL, 16);
    return [UIColor colorWithHex:x];
}

// takes 0x123456
+ (UIColor *)colorWithHex:(UInt32)col {
    unsigned char r, g, b;
    b = col & 0xFF;
    g = (col >> 8) & 0xFF;
    r = (col >> 16) & 0xFF;
    return [UIColor colorWithRed:(float)r/255.0f green:(float)g/255.0f blue:(float)b/255.0f alpha:1];
}


@end
