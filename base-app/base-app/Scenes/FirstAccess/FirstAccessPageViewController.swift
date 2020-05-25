//
//  FirstAccessPageViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FirstAccessPageViewController: UIPageViewController {
    
    private lazy var pageDataSource: FirstAccessDataSource = {
        FirstAccessDataSource(pages: pages)
    }()
    private lazy var pages: [FirstAccessView] = []
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = AppColors().greenLigth
        pageControl.pageIndicatorTintColor = AppColors().blackLight
        pageControl.defersCurrentPageDisplay = true
        return pageControl
    }()
    
    init() {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPageControl()
        view.backgroundColor = AppColors().whiteDefault
        setup()
    }
    
    func setup() {
        buildHierarchy()
        addConstraints()
    }
    
    private func setupPageView() {
        if let first = pages.first {
            setViewControllers([first], direction: .forward, animated: true, completion: nil)
        }
    }
    
    private func setupPageControl() {
        pageControl.numberOfPages = pages.count
    }
    
    private func buildHierarchy() {
        dataSource = pageDataSource
        delegate = pageDataSource
    }
    
    private func addConstraints() {
        view.addSubview(pageControl)
        pageControl.layout.applyConstraint {
            $0.left(alignedWith: view, relation: .greaterThanOrEqual)
            $0.right(alignedWith: view, relation: .lessThanOrEqual)
            $0.horizontalCenter(view: view)
            $0.bottom(alignedWith: view)
        }
    }
    
}

extension FirstAccessPageViewController: FirstAccessPageViewControllerType {
    func show(models: [FirstAccessModel]) {
        for model in models {
            let firstView = FirstAccessView(model: model)
            pages.append(firstView)
        }
        setupPageView()
        setupPageControl()
    }
}
