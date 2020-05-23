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
        imageView.image = AppImages().recycleIcon
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var imageLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = AppImages().logoGreenCode
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var slogan: UILabel = {
        let label = UILabel()
        label.text = "HELLO WORD"
        label.font = UIFont(name: "arial", size: 16)
        label.textAlignment = .center
        return label
    }()
    private lazy var subTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = AppColors().greenDark
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        buildHierarchy()
        addConstraints()
    }
    
    private func buildHierarchy() {
        addSubview(recycleIcon)
        addSubview(imageLogo)
        addSubview(slogan)
    }
    
    private func addConstraints() {
        recycleIcon.layout.applyConstraint {
            $0.size(82)
            $0.horizontalCenter(view: imageLogo)
        }
        imageLogo.layout.applyConstraint {
            $0.verticalCenter(view: self)
            $0.center(in: self)
            $0.under(view: recycleIcon, offSet: 32)
            $0.width(236)
        }
        slogan.layout.applyConstraint {
            $0.under(view: imageLogo, offSet: 16)
            $0.left(alignedWith: self, offSet: 16)
            $0.right(alignedWith: self, offSet: 16)
        }
    }
}
