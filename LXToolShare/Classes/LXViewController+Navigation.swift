//
//  LXViewController+Navigation.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/7.
//

import UIKit

public extension UIViewController {
    
    func createHeadView() -> UIView {
        let headView = UIView(frame: CGRect(x: 0, y: KStatusBarHeight, width: KScreenWidth, height: KNavBarHeight))
        headView.backgroundColor = UIColor.clear
        headView.isUserInteractionEnabled = true
        return headView
    }
    
    func createNavigation(withTitle title: String, titleColor: UIColor, titleFont: UIFont, bgColor: UIColor) -> UIView {
        let navigationView = UIView(frame: CGRect(x: 0, y: 0, width: KScreenWidth, height: KNavigationBarHeight))
        navigationView.backgroundColor = bgColor
        
        let headView = createHeadView()
        navigationView.addSubview(headView)
        
        let titleLabel = UILabel.text(title: title, font: titleFont, color: titleColor,alignment: .center)
        headView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: headView.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalTo: headView.widthAnchor, multiplier: 0.6),
            titleLabel.heightAnchor.constraint(equalToConstant: KNavBarHeight)
        ])
        
        return navigationView
    }
    
    func createBackNavigationWithIcon(_ icon: UIImage, leftWidth: CGFloat, leftHeight: CGFloat, title: String,
                                      color: UIColor, font: UIFont,  bgColor: UIColor) {
        
        let navigationView = UIView(frame: CGRect(x: 0, y: 0, width: KScreenWidth, height: KNavigationBarHeight))
        navigationView.backgroundColor = bgColor
        view.addSubview(navigationView)
        
        let headView = createHeadView()
        navigationView.addSubview(headView)
        
        let leftView = UIView(frame: CGRect(x: 10, y: 0, width: KNavBarHeight, height: KNavBarHeight))
        leftView.isUserInteractionEnabled = true
        headView.addSubview(leftView)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backLeftAction))
        leftView.addGestureRecognizer(tapGesture)
        
        let backicon = UIImageView(frame: CGRect(x: (KNavBarHeight - leftWidth)/2, y: (KNavBarHeight - leftHeight)/2, width: leftWidth, height: leftHeight))
        backicon.image = icon
        leftView.addSubview(backicon)
        
        let titleLabel = UILabel.text(title: title, font: font, color: color, alignment: .center)
        headView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: headView.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalTo: headView.widthAnchor, multiplier: 0.6),
            titleLabel.heightAnchor.constraint(equalToConstant: KNavBarHeight)
        ])
    }
    
    @objc func backLeftAction (){
        
        navigationController?.popViewController(animated: true)
    }
    
}
