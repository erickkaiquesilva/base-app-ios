//
//  AppImages.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 23/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

struct AppImages {
    
    func imageOrDefault(_ name: String) -> UIImage {
        return AppAssets.imageFromName(name) ?? UIImage()
    }
    
    var logoGreenCode: UIImage {
        return imageOrDefault("greenCode")
    }
    
    var recycleIcon: UIImage {
        return imageOrDefault("recycleIcon")
    }
    
    var happyIcon: UIImage {
        return imageOrDefault("happyIcon")
    }
    
    var earthIcon: UIImage {
        return imageOrDefault("earthIcon")
    }
}
