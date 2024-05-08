//
//  UIButton+Extension.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/7.
//

import UIKit

 extension UIButton {
    
    @discardableResult
     public  func title(_ title: String) -> UIButton {
        setTitle(title, for: .normal)
        return self
    }
    
    @discardableResult
     public  func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> UIButton {
        setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
     public func font(_ font: UIFont) -> UIButton {
        titleLabel?.font = font
        return self
    }
    
    @discardableResult
     public  func cornerRadius(_ cornerRadius: CGFloat) -> UIButton {
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        return self
    }
    
    @discardableResult
     public func border(width: CGFloat, color: UIColor) -> UIButton {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
     public func backgroundColor(_ color: UIColor) -> UIButton {
        backgroundColor = color
        return self
    }
    
    
}

