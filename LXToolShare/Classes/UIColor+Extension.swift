//
//  UIColor+Extension.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/6.
//

import UIKit

public extension UIColor {
    
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex >> 16) & 0xFF) / 255.0,
            green: CGFloat((hex >> 8) & 0xFF) / 255.0,
            blue: CGFloat(hex & 0xFF) / 255.0,
            alpha: alpha
        )
    }
    
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        var formattedHexString = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        formattedHexString = formattedHexString.replacingOccurrences(of: "#", with: "")
        
        var hexValue: UInt64 = 0
        
        guard Scanner(string: formattedHexString).scanHexInt64(&hexValue) else {
            self.init(red: 0, green: 0, blue: 0, alpha: 1)
            return
        }
        
        self.init(
            red: CGFloat((hexValue >> 16) & 0xFF) / 255.0,
            green: CGFloat((hexValue >> 8) & 0xFF) / 255.0,
            blue: CGFloat(hexValue & 0xFF) / 255.0,
            alpha: alpha
        )
    }
    
    static func fromHex(_ hex: Int, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(hex: hex, alpha: alpha)
    }
    
    static func fromHexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(hexString: hexString, alpha: alpha)
    }
    
}
