//
//  UILabel+Extension.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/6.
//

import UIKit

public extension UILabel {
    
    convenience init(text:String){
        self.init()
        self.text = text
    }
    convenience init(text:String,font:UIFont){
        self.init(text: text)
        self.font = font
    }
    convenience init(text:String,font:UIFont,color:UIColor){
        self.init(text: text, font: font)
        self.textColor = color
    }
    convenience init(text:String,font:UIFont,color:UIColor,alignment:NSTextAlignment){
        self.init(text: text, font: font, color: color)
        self.textAlignment = alignment
    }
    
    
    //---------------------------
    
    static func text(_ text: String?) -> UILabel {
        let label = UILabel()
        label.text = text
        return label
    }
    
    static func text(_ text: String?, font: UIFont) -> UILabel {
        let label = UILabel.text(text)
        label.font = font
        return label
    }
    
    static func text(_ text: String?, font: UIFont, color: UIColor) -> UILabel {
        let label = UILabel.text(text, font: font)
        label.textColor = color
        return label
    }
    
    static func text(_ text: String?, font: UIFont, color: UIColor, alignment: NSTextAlignment) -> UILabel {
        let label = UILabel.text(text, font: font, color: color)
        label.textAlignment = alignment
        return label
    }
    
}
