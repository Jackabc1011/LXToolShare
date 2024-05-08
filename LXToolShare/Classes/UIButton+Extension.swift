//
//  UIButton+Extension.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/7.
//

import UIKit

public extension UIButton {
    
    @discardableResult
    func title(_ title: String) -> UIButton {
        setTitle(title, for: .normal)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> UIButton {
        setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> UIButton {
        titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> UIButton {
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        return self
    }
    
    @discardableResult
    func border(width: CGFloat, color: UIColor) -> UIButton {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: UIColor) -> UIButton {
        backgroundColor = color
        return self
    }
    
    
}

