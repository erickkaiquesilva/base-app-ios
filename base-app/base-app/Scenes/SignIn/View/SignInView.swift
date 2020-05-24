//
//  SignInView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 14/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class SignInView: UIView {
    
    var handlerButtonSignIn: ((String?, String?) -> Void)?
    
    private lazy var recycleIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = AppImages().recycleIcon
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var textFieldEmail: TextFieldDefault = {
        let attributedPlaceholder = NSAttributedString(string: AppStrings().placeholderEmailAccess,
                                                       attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let textField = TextFieldDefault(attributedPlaceholder: attributedPlaceholder, type: .emailAddress)
        textField.borderColor = .white
        textField.borderWith = 2
        textField.textColor = .white
        return textField
    }()
    private lazy var textFieldPassword: TextFieldDefault = {
        let attributedPlaceholder = NSAttributedString(string: AppStrings().placeholderpasswordAccess,
                                                       attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let textField = TextFieldDefault(attributedPlaceholder: attributedPlaceholder, type: .default)
        textField.borderColor = .white
        textField.borderWith = 2
        textField.textColor = .white
        textField.isSecureTextEntry = true
        return textField
    }()
    private lazy var writeCredentialsTitle: UILabel = {
        let label = UILabel()
        label.text = AppStrings().writeCredentials
        label.font = UIFont(name: "arial", size: 16)
        label.textAlignment = .left
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var switchAccessFast: UISwitch = {
        let uiSwitch = UISwitch()
        uiSwitch.isOn = false
        uiSwitch.onTintColor = AppColors().blackLight
        return uiSwitch
    }()
    
    private lazy var buttonSignIn: ButtonDefault = ButtonDefault(title: AppStrings().signInBtn.uppercased())
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = AppColors().greenDark
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        buildHierarchy()
        addConstraints()
        handlerBtnLogar()
    }
    private func handlerBtnLogar() {
        buttonSignIn.didTap = { [weak self] in
            self?.handlerButtonSignIn?(self?.textFieldEmail.text, self?.textFieldPassword.text)
        }
    }
    private func buildHierarchy() {
        addSubview(recycleIcon)
        addSubview(writeCredentialsTitle)
        addSubview(switchAccessFast)
        addSubview(textFieldEmail)
        addSubview(textFieldPassword)
        addSubview(buttonSignIn)
    }
    private func addConstraints() {
        recycleIcon.layout.applyConstraint {
            $0.topSafeArea(aligneWith: self, offset: 52)
            $0.horizontalCenter(view: self)
            $0.size(82)
        }
        textFieldEmail.layout.applyConstraint {
            $0.under(view: recycleIcon, offSet: 106)
            $0.left(alignedWith: self, offSet: 52)
            $0.right(alignedWith: self, offSet: 52)
        }
        textFieldPassword.layout.applyConstraint {
            $0.under(view: textFieldEmail, offSet: 52)
            $0.left(alignedWith: self, offSet: 52)
            $0.right(alignedWith: self, offSet: 52)
        }
        writeCredentialsTitle.layout.applyConstraint {
            $0.under(view: textFieldPassword, offSet: 16)
            $0.left(alignedWith: self, offSet: 52)
            $0.right(alignedWith: self, offSet: 52)
        }
        switchAccessFast.layout.applyConstraint {
            $0.under(view: writeCredentialsTitle, offSet: 16)
            $0.left(alignedWith: self, offSet: 52)
            $0.width(68)
        }
        buttonSignIn.layout.applyConstraint {
            $0.bottomSafaArea(alignedWith: self, offset: 16)
            $0.left(alignedWith: self, offSet: 52)
            $0.right(alignedWith: self, offSet: 52)
        }
    }
}
