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
        
        let lab = UILabel.init(text: "会飞的猪", font: Font.pfRegular(ofSize: 12), color: UIColor.init(hexString: "#333333"))
        lab.frame = CGRectMake(0, 0, 100, realyHeight(13))
        self.view.addSubview(lab)
        
        let app = LXTool()
        app.saveValue("value",forKey: "key")
        
        app.removeValue(forKey: "key")
             
    }


}

