//
//  InitialCoordinator.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 14/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class InitialCoordinator: AppCoordinatorProtocol {
    var currentCoordinator: AppCoordinatorProtocol?
    var navigationController: UINavigationController
    var currentViewController: UIViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = createIntroViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    private func createIntroViewController() -> IntroViewController {
        let viewController = IntroViewController()
        viewController.delegate = self
        currentViewController = viewController
        return viewController
    }
    
    private func createSignInViewController() -> SignInViewController {
        let viewController = SignInViewController()
        currentViewController = viewController
        return viewController
    }
    
    private func createSignUpViewController() {
        
    }
}

extension InitialCoordinator: IntroViewControllerDelegate {
    func showSignIn() {
        let viewController = createSignInViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showSignUp() {
        
    }
}
