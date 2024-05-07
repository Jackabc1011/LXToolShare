//
//  ViewController.swift
//  SwiftTest
//
//  Created by 广东万商通科技有限公司 on 2024/5/6.
//

import UIKit
import LXToolShare
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let lab = UILabel.init(text: "会飞的猪", font: Font.pfMedium(ofSize: 14), color: UIColor.init(hexString: "#333333") ,alignment: .center)
        lab.frame = CGRectMake(0, 0, KScreenWidth, KNavigationBarHeight)
        lab.backgroundColor = UIColor.green
        self.view.addSubview(lab)
        
        
        
        LXTool .saveValue("value", forKey: "key")
        
        LXTool.removeValue(forKey: "key")
        
        
        
        
        let placeString = "我是占位符"
        
        let nameFiled = UITextField.createFiledWithPlace(placeString, placeColor: UIColor.green, placeFont: Font.pfRegular(ofSize: 14), textColor: UIColor.init(hexString: "#333333"), textFont: Font.pfMedium(ofSize: 16))
        
        nameFiled.frame = CGRectMake(100, 200, 140, 40)
        nameFiled.borderStyle = .roundedRect
        nameFiled.textAlignment = .center
        self.view.addSubview(nameFiled)
        
        
        
        
        
        
    }
    
    
}

