//
//  AttributeStyle.h
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AttributeStyle : NSObject

@property (nonatomic, strong) NSString *attributeName;
@property (nonatomic, strong) id   value;
@property (nonatomic )        NSRange range;

/**
 *创建便利构造器
 *@param attributeName 属性名字
 *@param value 属性值
 *@param range 取值范围
 *@return 实例对象
 */
+ (AttributeStyle *)attributeName:(NSString *)attributeName value:(id)value range:(NSRange)range;
+ (AttributeStyle *)attributeName:(NSString *)attributeName value:(id)value;
@end
