//
//  FirstViewController.swift
//  SwiftTest
//
//  Created by 广东万商通科技有限公司 on 2024/5/8.
//

import UIKit

class FirstViewController: LBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButtonImage = UIImage(named: "h_back_left") ?? UIImage()
        self.createBackNavigationWithIcon(backButtonImage, leftWidth: 28, leftHeight: 28, title: "我是首页", color: UIColor.black, font: UIFont.pfMedium(ofSize: 18), bgColor: UIColor(hexString: "#f5f5f5"))
        
    
        
      UIButton(type: .custom).title("").font(UIFont.pfMedium(ofSize: 15)).titleColor(UIColor.init(hexString: "#333333"))
        
//        bb.frame = CGRectMake(0, 0, 100, S_Radii_8_Height)
        
       UILabel.text(title: "", font: UIFont.pfMedium(ofSize: 14), color: UIColor.init(hexString: ""), alignment: .center)
        
        UITextField.createFiledWithPlace("", placeColor: UIColor.black, placeFont: UIFont.pfRegular(ofSize: 14), textColor: UIColor.gray, textFont: UIFont.pfMedium(ofSize: 14))
        
        
       
    }
    

   

}
