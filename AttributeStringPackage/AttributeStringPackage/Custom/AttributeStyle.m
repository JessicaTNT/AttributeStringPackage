//
//  AttributeStyle.m
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "AttributeStyle.h"

@implementation AttributeStyle
+ (AttributeStyle *)attributeName:(NSString *)attributeName value:(id)value range:(NSRange)range{
    AttributeStyle *style = [[[self class] alloc] init];
    style.attributeName = attributeName;
    style.value = value;
    style.range = range;
    return style;
}
+ (AttributeStyle *)attributeName:(NSString *)attributeName value:(id)value{
    AttributeStyle *style = [[[self class] alloc] init];
    style.attributeName = attributeName;
    style.value = value;
    return style;
}
@end
