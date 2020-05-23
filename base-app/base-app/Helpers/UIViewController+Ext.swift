//
//  UIViewController+Ext.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 21/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setupNavBar(title: String? = "",
                     backgroundColor: UIColor = .white,
                     titleColor: UIColor? = nil,
                     tintColor: UIColor? = .black,
                     barStyle: UIBarStyle = UIBarStyle.default) {
        var color: UIColor
        if let title = title {
            self.title = title
            if let titleColor = titleColor {
                color = titleColor
            } else {
                color = .black
            }
        } else {
            self.title = ""
            color = .clear
        }
        
        let attributes = [NSAttributedString.Key.font: UIFont(name: "arial", size: 18),
                          NSAttributedString.Key.foregroundColor: color]
        
        navigationController?.navigationBar.titleTextAttributes = attributes
        navigationController?.navigationBar.topItem?.titleView = nil
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = barStyle
        navigationController?.navigationBar.tintColor = tintColor
        navigationController?.navigationBar.barTintColor = backgroundColor
    }
    
}
