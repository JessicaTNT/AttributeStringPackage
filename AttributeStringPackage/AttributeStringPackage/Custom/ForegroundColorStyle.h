//
//  ForegroundColorStyle.h
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "AttributeStyle.h"
#import <UIKit/UIKit.h>

@interface ForegroundColorStyle : AttributeStyle
+ (ForegroundColorStyle *)withColor:(UIColor *)color range:(NSRange)range;
+ (ForegroundColorStyle *)withColor:(UIColor *)color;
@end
