//
//  ButtonCustom.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 21/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class ButtonDefault: UIButton {
    
    public var didTap: (() -> Void)?
    
    public var titleButton: String? {
        didSet {
            self.setTitle(titleButton, for: .normal)
        }
    }
    public var colorButton: UIColor? {
        didSet {
            self.backgroundColor = colorButton
        }
    }
    public var titleColor: UIColor? {
        didSet {
            self.titleLabel?.textColor = titleColor
        }
    }
    public var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor
        }
    }
    
    init(title: String = "") {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.backgroundColor = AppColors().greenLigth
        self.layer.borderWidth = 2
        self.layer.borderColor = AppColors().greenLigth.cgColor
        self.layer.cornerRadius = 10
        self.layout.applyConstraint { $0.height(60) }
        bindButtonEvents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func bindButtonEvents() {
        self.addTarget(self, action: #selector(handlerButton), for: .touchUpInside)
    }
    
    @objc private func handlerButton() {
        didTap?()
    }
}
