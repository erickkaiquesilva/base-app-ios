//
//  FirsAccessView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FirstAccessView: UIViewController {
    
    private lazy var firsAccessTitle: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "arial", size: 42)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var imageIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var firstAccessDescription: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "arial", size: 18)
        label.setLineSpacing(lineSpacing: 10.0, lineHeightMutable: 3.0)
        label.numberOfLines = 0
        return label
    }()
    
    init(model: FirstAccessModel) {
        super.init(nibName: nil, bundle: nil)
        self.firsAccessTitle.text = model.title
        self.imageIcon.image = model.imageIcon
        self.firstAccessDescription.text = model.description
        view.backgroundColor = AppColors().whiteDefault
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
        view.addSubview(firsAccessTitle)
        view.addSubview(imageIcon)
        view.addSubview(firstAccessDescription)
    }
    
    private func addConstraints() {
        firsAccessTitle.layout.applyConstraint {
            $0.topSafeArea(aligneWith: self.view, offset: 32)
            $0.left(alignedWith: self.view, offSet: 16)
            $0.right(alignedWith: self.view, offSet: 32)
        }
        imageIcon.layout.applyConstraint {
            $0.under(view: firsAccessTitle, offSet: 32)
            $0.horizontalCenter(view: self.view)
            $0.size(56)
        }
        firstAccessDescription.layout.applyConstraint {
            $0.under(view: imageIcon, offSet: 32)
            $0.left(alignedWith: self.view, offSet: 16)
            $0.right(alignedWith: self.view, offSet: 16)
        }
    }
}
