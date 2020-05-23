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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = IntroViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
}
