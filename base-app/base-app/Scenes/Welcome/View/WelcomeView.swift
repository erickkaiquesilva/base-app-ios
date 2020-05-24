//
//  WelcomeView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class WelcomeView: UIView {
    
    private lazy var welcomeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = AppImages().happyIcon
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var title: UILabel = {
        let label = UILabel()
        label.text = AppStrings().titleWelcome
        label.font = UIFont(name: "arial", size: 28)
        label.textAlignment = .center
        label.textColor = AppColors().blackLight
        label.numberOfLines = 0
        return label
    }()

    private lazy var  descriptionWelcome: UILabel = {
        let label = UILabel()
        label.text = AppStrings().descriptionWelcome
        label.font = UIFont(name: "arial", size: 18)
        label.textAlignment = .center
        label.textColor = AppColors().blackLight
        label.numberOfLines = 0
        return label
    }()

    private lazy var buttonNext: ButtonDefault = {
        let button = ButtonDefault(title: AppStrings().initialButton)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = AppColors().whiteDefault
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
        addSubview(welcomeImage)
        addSubview(title)
        addSubview(descriptionWelcome)
        addSubview(buttonNext)
    }
    private func addConstraints() {
        welcomeImage.layout.applyConstraint {
            $0.verticalCenter(view: self, offSet: -128)
            $0.horizontalCenter(view: self)
            $0.size(186)
        }
        title.layout.applyConstraint {
            $0.under(view: welcomeImage, offSet: 32)
            $0.left(alignedWith: self, offSet: 16)
            $0.right(alignedWith: self, offSet: 16)
        }
        descriptionWelcome.layout.applyConstraint {
            $0.under(view: title, offSet: 16)
            $0.left(alignedWith: self, offSet: 16)
            $0.right(alignedWith: self, offSet: 16)
        }
        buttonNext.layout.applyConstraint {
            $0.bottomSafaArea(alignedWith: self, offset: 16)
            $0.left(alignedWith: self, offSet: 52)
            $0.right(alignedWith: self, offSet: 52)
        }
    }
}
