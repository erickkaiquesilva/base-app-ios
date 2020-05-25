//
//  FirstAccessViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FirstAccessViewController: UIViewController {
    
    private let pageViewController: FirstAccessPageViewController
    private let viewModel: FirstAccessViewModelType
    
    init(pageViewController: FirstAccessPageViewController = FirstAccessPageViewController(),
         viewModel: FirstAccessViewModelType = FirstAccessViewModel()) {
        self.pageViewController = pageViewController
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors().whiteDefault
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.loadModels()
    }
    
    func setup() {
        bindLayoutEvents()
        buildHierarchy()
        addConstraints()
    }
    
    private func bindLayoutEvents() {
        viewModel.bindViewModels = { [weak self] models in
            self?.pageViewController.show(models: models)
        }
    }
    
    private func buildHierarchy() {
        view.addSubview(pageViewController.view)
    }
    
    private func addConstraints() {
        pageViewController.view.layout.applyConstraint { view in
            view.topSafeArea(aligneWith: self.view)
            view.left(alignedWith: self.view)
            view.right(alignedWith: self.view)
            view.bottomSafaArea(alignedWith: self.view, offset: 16)
        }
    }
}
