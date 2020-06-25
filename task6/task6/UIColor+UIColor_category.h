//
//  UIColor+UIColor_category.h
//  task6
//
//  Created by Dmitriy Sutygin on 24.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (UIColor_category)

+ (UIColor *)colorWithHex:(UInt32)col;
+ (UIColor *)colorWithHexString:(NSString *)str;

@end

NS_ASSUME_NONNULL_END

