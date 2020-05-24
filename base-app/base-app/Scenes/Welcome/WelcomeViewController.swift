//
//  WelcomeViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let contentView: WelcomeView
    
    init(contentView: WelcomeView = WelcomeView()) {
        self.contentView = contentView
        super.init(nibName: nil, bundle:  nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar(backgroundColor: AppColors().whiteDefault)
    }
    
    override func loadView() {
        super.loadView()
        view = contentView
    }
}
