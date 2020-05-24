//
//  SignUpView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class SignUpView: UIView {
    
    var handleFinishRegister: ((String?, String?, String?, String?) -> Void)?
    
    public let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = AppColors().greenDark
        return scrollView
    }()
    private let contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        return stackView
    }()
    private var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = AppColors().greenDark
        return view
    }()
    private lazy var recycleIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = AppImages().recycleIcon
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var textFieldName: TextFieldDefault = {
        let attributedString = NSAttributedString(string: AppStrings().placeholderName,
                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let textFieldDefault = TextFieldDefault(attributedPlaceholder: attributedString, type: .default)
        textFieldDefault.borderColor = .white
        textFieldDefault.borderWith = 2
        return textFieldDefault
    }()
    private lazy var textFieldCPF: TextFieldDefault = {
        let attributedString = NSAttributedString(string: AppStrings().placeholderCPF,
                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let textFieldDefault = TextFieldDefault(attributedPlaceholder: attributedString, type: .default)
        textFieldDefault.borderColor = .white
        textFieldDefault.borderWith = 2
        return textFieldDefault
    }()
    private lazy var textFieldEmail: TextFieldDefault = {
        let attributedString = NSAttributedString(string: AppStrings().placeholderEmail,
                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let textFieldDefault = TextFieldDefault(attributedPlaceholder: attributedString, type: .default)
        textFieldDefault.borderColor = .white
        textFieldDefault.borderWith = 2
        return textFieldDefault
    }()
    private lazy var textFieldPassword: TextFieldDefault = {
        let attributedString = NSAttributedString(string: AppStrings().placeholderPassword,
                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let textFieldDefault = TextFieldDefault(attributedPlaceholder: attributedString, type: .default)
        textFieldDefault.borderColor = .white
        textFieldDefault.borderWith = 2
        return textFieldDefault
    }()
    private lazy var buttonRegister: ButtonDefault = ButtonDefault(title: AppStrings().finishRegister.uppercased())
    
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
        bindLayoutEvents()
    }
    
    private func bindLayoutEvents() {
        buttonRegister.didTap = { [weak self] in
            self?.handleFinishRegister?(self?.textFieldName.text, self?.textFieldCPF.text,
                                        self?.textFieldEmail.text, self?.textFieldPassword.text)
        }
    }
    
    private func buildHierarchy() {
        addSubview(scrollView)
        scrollView.addSubview(contentStackView)
        contentStackView.addArrangedSubview(contentView)
        contentView.addSubview(recycleIcon)
        contentView.addSubview(recycleIcon)
        contentView.addSubview(textFieldName)
        contentView.addSubview(textFieldCPF)
        contentView.addSubview(textFieldEmail)
        contentView.addSubview(textFieldPassword)
        addSubview(buttonRegister)
    }
    
    private func addConstraints() {
        scrollView.layout.applyConstraint {
            $0.top(alignedWith: self)
            $0.left(alignedWith: self)
            $0.right(alignedWith: self)
            $0.above(view: buttonRegister, offSet: 16)
            $0.width(relatedTo: self)
        }
        contentStackView.layout.applyConstraint {
            $0.edges(in: scrollView)
            $0.width(relatedTo: self)
        }
        contentView.layout.applyConstraint {
            $0.height(540)
        }
        recycleIcon.layout.applyConstraint {
            $0.top(alignedWith: contentView, offSet: 16)
            $0.size(82)
            $0.horizontalCenter(view: contentView)
        }
        textFieldName.layout.applyConstraint {
            $0.under(view: recycleIcon, offSet: 106)
            $0.left(alignedWith: contentView, offSet: 52)
            $0.right(alignedWith: contentView, offSet: 52)
        }
        textFieldCPF.layout.applyConstraint {
            $0.under(view: textFieldName, offSet: 32)
            $0.left(alignedWith: contentView, offSet: 52)
            $0.right(alignedWith: contentView, offSet: 52)
        }
        textFieldEmail.layout.applyConstraint {
            $0.under(view: textFieldCPF, offSet: 32)
            $0.left(alignedWith: contentView, offSet: 52)
            $0.right(alignedWith: contentView, offSet: 52)
        }
        textFieldPassword.layout.applyConstraint {
            $0.under(view: textFieldEmail, offSet: 32)
            $0.left(alignedWith: contentView, offSet: 52)
            $0.right(alignedWith: contentView, offSet: 52)
        }
        buttonRegister.layout.applyConstraint {
            $0.bottomSafaArea(alignedWith: self, offset: 16)
            $0.left(alignedWith: self, offSet: 52)
            $0.right(alignedWith: self, offSet: 52)
        }
    }
}
