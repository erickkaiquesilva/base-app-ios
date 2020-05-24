//
//  SignUpViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    private let contentView: SignUpView
    weak var delegate: SignUpViewControllerDelegate?
    
    init(contentView: SignUpView = SignUpView()) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
        bindLayoutEvents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar(backgroundColor: AppColors().greenDark)
    }
    
    override func loadView() {
        view = contentView
    }
    
    private func bindLayoutEvents() {
        contentView.handleFinishRegister = { [weak self] nameUser, cpf, emailAdress, password in
            print("DADOS USUÁRIO: \(nameUser), \(cpf), \(emailAdress), \(password)")
            self?.delegate?.showWelcome()
        }
    }
}
