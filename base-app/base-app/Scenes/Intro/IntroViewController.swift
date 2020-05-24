//
//  IntroViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 21/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    private let contentView: IntroView
    weak var delegate: IntroViewControllerDelegate?
    
    init(contentView: IntroView = IntroView()) {
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
        contentView.didTapButtonSignIn = { [weak self] in
            self?.delegate?.showSignIn()
        }
        contentView.didTapButtonSignUp = { [weak self] in
            self?.delegate?.showSignUp()
        }
    }
}
