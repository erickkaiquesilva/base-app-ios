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
//        let viewController = createIntroViewController()
        navigationController.pushViewController(createFirstAccessViewController(), animated: true)
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
    
    private func createSignUpViewController() -> SignUpViewController {
        let viewController = SignUpViewController()
        viewController.delegate = self
        currentViewController = viewController
        return viewController
    }
    
    private func createWelcomeViewController() -> WelcomeViewController {
        let viewController = WelcomeViewController()
        currentViewController = viewController
        return viewController
    }
    
    private func createFirstAccessViewController() -> FirstAccessViewController {
        let viewController = FirstAccessViewController()
        currentViewController = viewController
        return viewController
    }
}

extension InitialCoordinator: IntroViewControllerDelegate {
    func showSignIn() {
        let viewController = createSignInViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showSignUp() {
        let viewController = createSignUpViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
}

extension InitialCoordinator: SignUpViewControllerDelegate {
    func showWelcome() {
        let viewController = createWelcomeViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
}
