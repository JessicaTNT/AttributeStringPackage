//
//  FontStyle.h
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "AttributeStyle.h"

#import <UIKit/UIKit.h>
@interface FontStyle : AttributeStyle

+ (FontStyle *)withFont:(UIFont *)font range:(NSRange)range;
+ (FontStyle *)withFont:(UIFont *)font;
@end
