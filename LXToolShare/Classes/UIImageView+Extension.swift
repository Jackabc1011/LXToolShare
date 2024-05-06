//
//  UIImageView+Extension.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/6.
//

import UIKit

public extension UIImageView {
    
    convenience init(name:String){
        self.init()
        self.image = UIImage(named: name)
    }
    convenience init(isEdit:Bool){
        self.init()
        self.isUserInteractionEnabled = isEdit
    }
    
    convenience init(name:String,isEdit:Bool){
        self.init(name: name)
        self.isUserInteractionEnabled = isEdit
    }
    
    private static var clickEdgeInsets = "clickEdgeInsets"
    
    var addEdgeInsetes :UIEdgeInsets? {
        
        set{
            objc_setAssociatedObject(self, UIImageView.clickEdgeInsets, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
        }
        get{
            return objc_getAssociatedObject(self, UIImageView.clickEdgeInsets) as? UIEdgeInsets
        }
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        
        guard let inset = addEdgeInsetes else {
            return super.point(inside: point, with: event)
        }
        var bounds = self.bounds
        
        let x:CGFloat = -inset.left
        let y:CGFloat = -inset.top
        let width:CGFloat = bounds.width + inset.left + inset.right
        let height:CGFloat = bounds.height + inset.top+inset.bottom
        bounds = CGRect(x: x, y: y, width: width, height: height)
        return bounds.contains(point)
    }
}
