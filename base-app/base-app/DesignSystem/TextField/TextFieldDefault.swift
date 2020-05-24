//
//  TextFieldDefault.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 23/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class TextFieldDefault: UITextField {
    
    public var borderWith: CGFloat? {
        didSet {
            self.layer.borderWidth = borderWith ?? 1
        }
    }
    public var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor
        }
    }
    
    init(attributedPlaceholder: NSAttributedString, type keyboard: UIKeyboardType,
         fontSize size: CGFloat = 14, alignmentText alignment: NSTextAlignment = .left,
         textColor: UIColor = .white) {
        super.init(frame: .zero)
        self.attributedPlaceholder = attributedPlaceholder
        self.keyboardType = keyboard
        self.font = UIFont(name: "arial", size: size)
        self.textAlignment = alignment
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.textColor = textColor
        self.layout.applyConstraint { $0.height(60) }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
