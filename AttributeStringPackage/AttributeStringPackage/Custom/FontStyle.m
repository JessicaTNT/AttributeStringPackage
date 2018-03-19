//
//  FontStyle.m
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "FontStyle.h"

@implementation FontStyle
+ (FontStyle *)withFont:(UIFont *)font range:(NSRange)range{
    FontStyle *style = [FontStyle attributeName:NSFontAttributeName value:font range:range];
    return style;
}
+ (FontStyle *)withFont:(UIFont *)font{
    FontStyle *style = [FontStyle attributeName:NSFontAttributeName value:font];
    return style;
}
@end
