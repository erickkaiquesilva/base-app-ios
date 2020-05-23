//
//  IntroView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 21/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class IntroView: UIView {
    
    private lazy var recycleIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "recycleIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
//    private lazy var imageLogo: UIImageView = {
//        let imageView = UIImageView()
//        return imageView
//    }()
//    private lazy var title: UILabel = {
//        let label = UILabel()
//        return label
//    }()
//    private lazy var subTitle: UILabel = {
//        let label = UILabel()
//        return label
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
