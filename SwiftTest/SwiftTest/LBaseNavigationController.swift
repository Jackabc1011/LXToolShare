//
//  LBaseNavigationController.swift
//  SwiftTest
//
//  Created by 广东万商通科技有限公司 on 2024/5/8.
//

import UIKit

class LBaseNavigationController: UINavigationController,UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.interactivePopGestureRecognizer?.delegate = self;
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        super.pushViewController(viewController, animated: animated)
        
        if self.children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.hidesBackButton = true
            self.interactivePopGestureRecognizer?.isEnabled = false
        }
        self.interactivePopGestureRecognizer?.isEnabled = true
    }
    
}
