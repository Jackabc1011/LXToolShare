//
//  LXBaseTableController.swift
//  SwiftTest
//
//  Created by 广东万商通科技有限公司 on 2024/5/7.
//

import UIKit
import LXToolShare
class LXBaseTableController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    lazy var listArray:NSMutableArray = {
        var array = NSMutableArray()
        return array
    }()
    
    lazy var listTable:UITableView = {
        
        var table = UITableView.init(frame: CGRect(x: 0, y: KNavigationBarHeight, 
                                                   width: KScreenWidth, height: KScreenHeight),
                                     style: .plain)
        table.delegate = self
        table.dataSource = self
        table.contentInset = UIEdgeInsets(top: -1, left: 0, bottom: 0, right: 0)
        table.separatorStyle = .none
        UITableView.appearance().estimatedRowHeight = 0
        UITableView.appearance().estimatedSectionHeaderHeight = 0
        UITableView.appearance().estimatedSectionFooterHeight = 0
        UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
        UITableView.appearance().contentInsetAdjustmentBehavior = .never
        UICollectionView.appearance().contentInsetAdjustmentBehavior = .never
        if #available(iOS 15.0, *) {
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        return table
    }()
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.listTable)
        
    }
    
  
}
extension LXBaseTableController{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableView", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
}
