//
//  AppAssets.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 14/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

final class AppAssets {
    static func colorFromName(_ name: String, alpha: CGFloat = 1.0) -> UIColor? {
        return UIColor(named: name, in: Bundle(for: self), compatibleWith: nil)?.withAlphaComponent(alpha)
    }
    
    static func imageFromName(_ name: String) -> UIImage? {
        return UIImage(named: name, in: Bundle(for: self), compatibleWith: nil)
    }
}

// MARK: - CustomFont
extension UIFont {
   static func customFontDefault(familyName: String, size: CGFloat) -> UIFont {
        if let font = UIFont(name: familyName, size: size) {
            return font
        }
        return UIFont.systemFont(ofSize: size)
    }
}
