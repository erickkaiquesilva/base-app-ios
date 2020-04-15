//
//  SignInView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 14/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class SignInView: UIView {
    
    var handlerButtonSignIn: ((String, String) -> Void)?
    
    private lazy var inputUser: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private lazy var inputPassword: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private lazy var buttonSignIn: UIButton = {
        let button = UIButton()
        return button
    }()
}
