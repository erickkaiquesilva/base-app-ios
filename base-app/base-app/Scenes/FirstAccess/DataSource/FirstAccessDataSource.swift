//
//  FirstAccessDataSource.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FirstAccessDataSource: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var didChangePageTo: ((_ newPage: Int) -> Void)?
    var pages: [UIViewController]
    
    init(pages: [UIViewController]) {
        self.pages = pages
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentVCIndex = pages.firstIndex(of: viewController), currentVCIndex > 0 else {
            return nil
        }
        return pages[currentVCIndex - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentVCIndex = pages.firstIndex(of: viewController), currentVCIndex < pages.count - 1 else {
            return nil
        }
        return pages[currentVCIndex + 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let viewControllers = pageViewController.viewControllers {
            if let viewControllerIndex = self.pages.firstIndex(of: viewControllers[0]) {
                didChangePageTo?(viewControllerIndex)
            }
        }
    }
}
