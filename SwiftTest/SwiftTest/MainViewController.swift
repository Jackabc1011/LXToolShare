//
//  ViewController.swift
//  SwiftTest
//
//  Created by 广东万商通科技有限公司 on 2024/5/6.
//

import UIKit

class MainViewController: LBaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.createNavigation(withTitle: "数据测试?")
                        
        let placeString = "我是占位符"
        let nameFiled = UITextField.createFiledWithPlace(placeString, placeColor: UIColor.yellow, placeFont: UIFont.pfRegular(ofSize: 14), textColor: UIColor.init(hexString: "#333333"), textFont: UIFont.pfMedium(ofSize: 16))
        
        nameFiled.frame = CGRectMake(100, 200, 140, 40)
        nameFiled.borderStyle = .roundedRect
        nameFiled.textAlignment = .center
        self.view.addSubview(nameFiled)
        
                
        let button = UIButton(type: .custom)
            .title("点击跳转")
            .font(UIFont.pfMedium(ofSize: 16))
            .titleColor(UIColor.black)
            .backgroundColor(UIColor.blue)
            .cornerRadius(8)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.frame = CGRectMake(100, 250, 100, 50)
        self.view.addSubview(button)
    }
    
    @objc func buttonAction(){
        
        let nextVC = FirstViewController()
        self.navigationController!.pushViewController(nextVC, animated: true)
    }
    
    
}

