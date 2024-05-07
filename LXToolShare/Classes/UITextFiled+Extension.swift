//
//  UITextFiled+Extension.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/7.
//

import UIKit

public extension UITextField {
    
    
    /// UITextField 初始化
    /// - Parameters:
    ///   - placeString: 占位文本
    ///   - placeColor: 占位文本颜色
    ///   - placeFont: 占位文本字体
    ///   - textColor: 颜色
    ///   - textFont: 字体
    /// - Returns: 返回UITextField
    static func createFiledWithPlace(_ placeString:String ,placeColor:UIColor,placeFont:UIFont,
                                     textColor:UIColor,textFont:UIFont) ->UITextField{
        let filed = UITextField()
        filed.textColor = textColor
        filed.font = textFont
        filed.attributedPlaceholder = NSAttributedString(string: placeString, attributes: [NSAttributedString.Key.foregroundColor:placeColor,NSAttributedString.Key.font:placeFont])
        return filed
    }
    
}
