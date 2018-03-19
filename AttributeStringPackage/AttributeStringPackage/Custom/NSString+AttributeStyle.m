//
//  NSString+AttributeStyle.m
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "NSString+AttributeStyle.h"
#import "AttributeStyle.h"
@implementation NSString (AttributeStyle)
- (NSMutableAttributedString *)createAttributeWithArr:(NSArray *)arr{
    if (self.length <= 0) {
        return nil;
    }
    NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc] initWithString:self];
    for (AttributeStyle *style in arr) {
        [attribute addAttribute:style.attributeName value:style.value range:style.range];
    }
    return attribute;
}
- (NSMutableAttributedString *)validNumberAttributeWithArr:(NSArray *)arr{
    if (self.length <=0 ) {
        return nil;
    }
    NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSString *regex = @"^[0-9]*$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    for (int i = 0; i < self.length; i++) {
        if ([pred evaluateWithObject:[self substringWithRange:NSMakeRange(i, 1)]]) {
            for (AttributeStyle *style in arr) {
                [attributeStr addAttribute:style.attributeName value:style.value range:NSMakeRange(i, 1)];
            }
        }
    }
    return attributeStr;
}
@end
