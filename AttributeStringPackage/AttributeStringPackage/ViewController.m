//
//  ViewController.m
//  AttributeStringPackage
//
//  Created by dyso on 2018/3/19.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "ViewController.h"
#import "NSString+AttributeStyle.h"
#import "AttributeStyle.h"
#import "FontStyle.h"
#import "ForegroundColorStyle.h"
/*
//1. 设置字体大小，默认为12
UIKIT_EXTERN NSAttributedStringKey const NSFontAttributeName NS_AVAILABLE(10_0, 6_0);

//2. 设置文本的段落，它的Value值是NSMutableParagraphStyle
UIKIT_EXTERN NSAttributedStringKey const NSParagraphStyleAttributeName NS_AVAILABLE(10_0, 6_0);

//3. 设置字体的颜色，默认是黑色
UIKIT_EXTERN NSAttributedStringKey const NSForegroundColorAttributeName NS_AVAILABLE(10_0, 6_0);

//4. 设置背景颜色，默认背景为透明
UIKIT_EXTERN NSAttributedStringKey const NSBackgroundColorAttributeName NS_AVAILABLE(10_0, 6_0);

//5. 设置连字符，它的Value值是NSNumber， 比如：@(1)
UIKIT_EXTERN NSAttributedStringKey const NSLigatureAttributeName NS_AVAILABLE(10_0, 6_0);

//6. 设置字符的间距，value值亦是NSNumber,如：@(3)或者@(-3),正数表示间距加宽，负数表示缩小字符间距
UIKIT_EXTERN NSAttributedStringKey const NSKernAttributeName NS_AVAILABLE(10_0, 6_0);

//7. 设置删除线，NSNumber对象，除了以下这4种还可以设置其他整数值，取值为 0 - 7时，效果为单实线，随着值得增加，单实线逐渐变粗，取值为 9 - 15时，效果为双实线，取值越大，双实线越粗
// 枚举类型：
// @(NSUnderlineStyleNone)   不设置删除线
// @(NSUnderlineStyleSingle) 设置删除线为细单实线
// @(NSUnderlineStyleThick)  设置删除线为粗单实线
// @(NSUnderlineStyleDouble) 设置删除线为细双实线
UIKIT_EXTERN NSAttributedStringKey const NSStrikethroughStyleAttributeName NS_AVAILABLE(10_0, 6_0);
// 8. 设置删除线的颜色，value值为 UIColor 对象，默认值为黑色
UIKIT_EXTERN NSAttributedStringKey const NSStrikethroughColorAttributeName NS_AVAILABLE(10_0, 7_0);

// 9. 设置笔画宽度，value值为 NSNumber 对象@(整数)，负值填充效果，正值中空效果
UIKIT_EXTERN NSAttributedStringKey const NSStrokeWidthAttributeName NS_AVAILABLE(10_0, 6_0);
// 10. 设置填充部分颜色，不是字体颜色
UIKIT_EXTERN NSAttributedStringKey const NSStrokeColorAttributeName NS_AVAILABLE(10_0, 6_0);

// 11. 设置下划线，value值为 NSNumber 对象（整数），枚举常量 NSUnderlineStyle中的值，与删除线类似
UIKIT_EXTERN NSAttributedStringKey const NSUnderlineStyleAttributeName NS_AVAILABLE(10_0, 6_0);
// 12. 设置下划线的颜色 value值为 UIColor 对象
UIKIT_EXTERN NSAttributedStringKey const NSUnderlineColorAttributeName NS_AVAILABLE(10_0, 7_0);

// 13. 设置阴影属性，value值为 NSShadow 对象
UIKIT_EXTERN NSAttributedStringKey const NSShadowAttributeName NS_AVAILABLE(10_0, 6_0);

// 14. 设置文本特殊效果，取值为 NSString 对象，目前只有一个可用的特效
// NSTextEffectLetterpressStyle（凸版印刷效果），适用于iOS 7.0及以上
UIKIT_EXTERN NSAttributedStringKey const NSTextEffectAttributeName NS_AVAILABLE(10_10, 7_0);

// 15.  设置文本附件,取值为NSTextAttachment对象,常用于文字图片混排
UIKIT_EXTERN NSAttributedStringKey const NSAttachmentAttributeName NS_AVAILABLE(10_0, 7_0);

// 16.  设置链接属性，点击后调用浏览器打开指定URL地址
UIKIT_EXTERN NSAttributedStringKey const NSLinkAttributeName NS_AVAILABLE(10_0, 7_0);

// 17. 设置基线偏移值，取值为 NSNumber （float）,正值上偏，负值下偏
UIKIT_EXTERN NSAttributedStringKey const NSBaselineOffsetAttributeName NS_AVAILABLE(10_0, 7_0);      // NSNumber containing floating point value, in points; offset from baseline, default 0

// 18. 设置字形倾斜度，取值为 NSNumber （float）,正值右倾，负值左倾
UIKIT_EXTERN NSAttributedStringKey const NSObliquenessAttributeName NS_AVAILABLE(10_0, 7_0);

// 19. 设置文本横向拉伸属性，取值为 NSNumber （float）,正值横向拉伸文本，负值横向压缩文本
UIKIT_EXTERN NSAttributedStringKey const NSExpansionAttributeName NS_AVAILABLE(10_0, 7_0);


// 20. 设置文字书写方向，取值为以下组合
//@[@(NSWritingDirectionLeftToRight | NSTextWritingDirectionEmbedding)]
//@[@(NSWritingDirectionLeftToRight | NSTextWritingDirectionOverride)]
//@[@(NSWritingDirectionRightToLeft | NSTextWritingDirectionEmbedding)]
//@[@(NSWritingDirectionRightToLeft | NSTextWritingDirectionOverride)]
UIKIT_EXTERN NSAttributedStringKey const NSWritingDirectionAttributeName NS_AVAILABLE(10_6, 7_0);

// 21. 设置文字排版防线，取值为 NSNumber 对象(整数)，0 表示横排文本，1 表示竖排文本。
//                                     在 iOS 中，总是使用横排文本，0 以外的值都未定义
UIKIT_EXTERN NSAttributedStringKey const NSVerticalGlyphFormAttributeName NS_AVAILABLE(10_7, 6_0);
*/
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

   NSString *textStr = @"hello大家好，Welcome to the Little Demo，￥520.00";
    UILabel *myLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 80)];
    myLable.numberOfLines = 0;
    myLable.text = textStr;
   
//    myLable.attributedText = [textStr createAttributeWithArr:@[[ForegroundColorStyle withColor:[UIColor redColor] range:NSMakeRange(0, 5)], [FontStyle withFont:[UIFont systemFontOfSize:30.f] range:NSMakeRange(5, 3)]]];
    myLable.attributedText = [textStr validNumberAttributeWithArr:@[[ForegroundColorStyle withColor:[UIColor redColor]], [FontStyle withFont:[UIFont systemFontOfSize:28.f]]]];
    [self.view addSubview:myLable];

}
// NSMutableAttributedString基本的使用方法
- (NSMutableAttributedString *)basicLableTextForegroundColorAndFontWithString:(NSString *)str{
   
    NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc] initWithString:str];
    // 设置字体颜色
    [attributeStr addAttribute:NSForegroundColorAttributeName
                         value:[UIColor redColor]
                         range:NSMakeRange(0, 5)];
    // 设置字体大小
    [attributeStr addAttribute:NSFontAttributeName
                         value:[UIFont systemFontOfSize:28.f]
                         range:NSMakeRange(0, 5)];
   
    return attributeStr;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
