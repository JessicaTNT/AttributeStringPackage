//
//  ForegroundColorStyle.m
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "ForegroundColorStyle.h"

@implementation ForegroundColorStyle
+ (ForegroundColorStyle *)withColor:(UIColor *)color range:(NSRange)range{
    ForegroundColorStyle *style = [ForegroundColorStyle attributeName:NSForegroundColorAttributeName value:color range:range];
    return style;
}
+ (ForegroundColorStyle *)withColor:(UIColor *)color{
    ForegroundColorStyle *style = [ForegroundColorStyle attributeName:NSForegroundColorAttributeName value:color];
    return style;
}
@end
