//
//  MarcoMangerFile.swift
//  Coding
//
//  Created by 广东万商通科技有限公司 on 2024/1/3.
//

import Foundation
import UIKit

let KScreenWidth:CGFloat                        = UIScreen.main.bounds.size.width

let KScreenHeight:CGFloat                       = UIScreen.main.bounds.size.height

let KStatusBarHeight:CGFloat                    = UIApplication.shared.statusBarFrame.size.height

let KNavBarHeight:CGFloat                       = 44.0

let KNavigationBarHeight:CGFloat                = KStatusBarHeight + KNavBarHeight

let IsIPhoneX: Bool                             = KStatusBarHeight > 20

let KTabBarHeight: CGFloat                      = IsIPhoneX ? 83.0 : 49.0

let KTabBarSafeBottomMargin: CGFloat            = IsIPhoneX ? 34.0 : 0.0

let S_Space_Left :CGFloat                        = 15

let S_Cell_Space_Left :CGFloat                   = 12

let S_Radii_8_Height :CGFloat                    = 8

let S_Radii_6_Height :CGFloat                    = 6

let S_Radii_4_Height :CGFloat                    = 4


