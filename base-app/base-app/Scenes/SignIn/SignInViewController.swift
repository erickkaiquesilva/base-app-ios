//
//  ViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 14/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    private let contentView: SignInView
    
    init(contentView: SignInView = SignInView()) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        super.loadView()
        view = contentView
    }
}

