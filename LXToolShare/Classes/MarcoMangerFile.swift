//
//  MarcoMangerFile.swift
//  Coding
//
//  Created by 广东万商通科技有限公司 on 2024/1/3.
//

import Foundation
import UIKit

enum GradientType {
    case horizontal
    case vertical
}

public let KScreenWidth:CGFloat                        = UIScreen.main.bounds.size.width

public let KScreenHeight:CGFloat                       = UIScreen.main.bounds.size.height

public let KStatusBarHeight:CGFloat                    = UIApplication.shared.statusBarFrame.size.height

public let KNavBarHeight:CGFloat                       = 44.0

public let KNavigationBarHeight:CGFloat                = KStatusBarHeight + KNavBarHeight

public let IsIPhoneX: Bool                             = KStatusBarHeight > 20

public let KTabBarHeight: CGFloat                      = IsIPhoneX ? 83.0 : 49.0

public let KTabBarSafeBottomMargin: CGFloat            = IsIPhoneX ? 34.0 : 0.0

public let S_Space_Left :CGFloat                        = 15

public let S_Cell_Space_Left :CGFloat                   = 12

public let S_Radii_8_Height :CGFloat                    = 8

public let S_Radii_6_Height :CGFloat                    = 6

public let S_Radii_4_Height :CGFloat                    = 4


public func realyHeight(_ changeHeight:CGFloat)->CGFloat
{
    return KScreenWidth * (changeHeight / 375)
}

/// - Parameters:
///   - width: 默认宽度
///   - height: 默认高度
///   - changeWidth: 新宽度
/// - Returns: 返回新的高度
public func backHeight(oldWidth width:CGFloat, oldheight height:CGFloat ,changeWidth:CGFloat) ->CGFloat
{
    return (height * changeWidth) / width
}

/// - Parameters:
///   - width: 默认宽度
///   - height: 默认高度
///   - changeHeight: 新高度
/// - Returns: 返回新的宽度
public func backWidth(oldWidth width:CGFloat, oldheight height:CGFloat ,changeHeight:CGFloat) ->CGFloat
{
    return (width * changeHeight) / height
}


