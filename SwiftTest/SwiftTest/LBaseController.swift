//
//  LBaseController.swift
//  SwiftTest
//
//  Created by 广东万商通科技有限公司 on 2024/5/7.
//

import UIKit

class LBaseController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.hidesBackButton = true
        navigationController?.setNavigationBarHidden(true, animated: animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hexString: "#F8F8F8")
    }
    
     func createNavigation(withTitle title: String) {
        
        self.createNavigation(withTitle: title, titleColor: UIColor.init(hexString: "#666666"), titleFont: UIFont.pfMedium(ofSize: 18), bgColor: UIColor.white)
    }
}

