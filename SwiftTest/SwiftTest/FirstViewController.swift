//
//  FirstViewController.swift
//  SwiftTest
//
//  Created by 广东万商通科技有限公司 on 2024/5/8.
//

import UIKit
import LXToolShare

class FirstViewController: LBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButtonImage = UIImage(named: "h_back_left") ?? UIImage()
        self.createBackNavigationWithIcon(backButtonImage, leftWidth: 28, leftHeight: 28, title: "我是首页", color: UIColor.black, font: Font.pfMedium(ofSize: 18), bgColor: UIColor(hexString: "#f5f5f5"))
        
    }
    

   

}
