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
        
        let lab = UILabel.init(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        lab.text = "会飞的猪"
        lab.font = Font.pfRegular(ofSize: 12)
        self.view.addSubview(lab)
        
    }


}

