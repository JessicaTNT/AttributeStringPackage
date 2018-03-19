//
//  NSString+AttributeStyle.h
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AttributeStyle)
- (NSMutableAttributedString *)createAttributeWithArr:(NSArray *)arr;
// 识别字符串中的数字，并设置样式
- (NSMutableAttributedString *)validNumberAttributeWithArr:(NSArray *)arr;
@end
