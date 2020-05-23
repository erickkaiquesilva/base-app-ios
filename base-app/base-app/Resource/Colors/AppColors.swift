//
//  AppColors.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 23/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

struct AppColors {
    
    func colorOrDefault(_ name: String, alpha: CGFloat = 1.0) -> UIColor {
        return AppAssets.colorFromName(name, alpha: alpha) ?? UIColor.black
    }
    
    var greenLigth: UIColor {
        return colorOrDefault("greenLight")
    }
    
    var greenDark: UIColor {
        return colorOrDefault("greenDark")
    }
}
