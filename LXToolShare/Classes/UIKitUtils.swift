//
//  LXStaticManger.swift
//  Pods
//
//  Created by 广东万商通科技有限公司 on 2024/5/6.
//

import UIKit


public struct Font {
    
    public  static func pfRegular(ofSize size:CGFloat) -> UIFont{
        return UIFont(name: "PingFangSC-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    public static func pfMedium(ofSize size:CGFloat) -> UIFont{
        return UIFont(name: "PingFangSC-Medium", size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    public static func pfSemibold(ofSize size:CGFloat) -> UIFont{
        return UIFont(name: "PingFangSC-Semibold", size: size) ?? UIFont.systemFont(ofSize: size)
    }    
}
