//
//  IntroView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 21/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class IntroView: UIView {
    
    var didTapButtonSignIn: (() -> Void)?
    var didTapButtonSignUp: (() -> Void)?
    
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
        label.text = AppStrings().slogan
        label.font = UIFont(name: "arial", size: 28)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    private lazy var subTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var buttonSignIn = ButtonDefault(title: AppStrings().signInButton.uppercased())
    
    private lazy var buttonSignUp: ButtonDefault = {
        let button = ButtonDefault(title: AppStrings().signUpButton.uppercased())
        button.colorButton = .clear
        button.titleColor = .white
        button.borderColor  = .white
        return button
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
        bindLayoutEvents()
    }
    
    private func bindLayoutEvents() {
        buttonSignIn.didTap = { self.didTapButtonSignIn?() }
        buttonSignUp.didTap = { self.didTapButtonSignUp?() }
    }
    
    private func buildHierarchy() {
        addSubview(recycleIcon)
        addSubview(imageLogo)
        addSubview(slogan)
        addSubview(buttonSignIn)
        addSubview(buttonSignUp)
    }
    
    private func addConstraints() {
        recycleIcon.layout.applyConstraint {
            $0.size(82)
            $0.horizontalCenter(view: imageLogo)
        }
        imageLogo.layout.applyConstraint {
            $0.verticalCenter(view: self, offSet: -106)
            $0.horizontalCenter(view: self)
            $0.under(view: recycleIcon, offSet: 52)
            $0.width(236)
        }
        slogan.layout.applyConstraint {
            $0.under(view: imageLogo, offSet: 32)
            $0.left(alignedWith: self, offSet: 32)
            $0.right(alignedWith: self, offSet: 32)
        }
        buttonSignIn.layout.applyConstraint {
            $0.above(view: buttonSignUp, offSet: 16)
            $0.left(alignedWith: self, offSet: 36)
            $0.right(alignedWith: self, offSet: 36)
        }
        buttonSignUp.layout.applyConstraint {
            $0.bottomSafaArea(alignedWith: self, offset: 16)
            $0.left(alignedWith: self, offSet: 36)
            $0.right(alignedWith: self, offSet: 36)
        }
    }
}
