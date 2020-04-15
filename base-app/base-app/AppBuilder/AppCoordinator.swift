//
//  AppCoordinator.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 14/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

final class AppCoordinator: AppCoordinatorProtocol {
    
    var currentCoordinator: AppCoordinatorProtocol?
    var window: UIWindow
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController(),
         windowScene: UIWindowScene) {
        self.navigationController = navigationController
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
        self.window.windowScene = windowScene
    }
    
    func start() {
        let coordinator = InitialCoordinator(navigationController: navigationController)
        currentCoordinator = coordinator
        coordinator.start()
    }
}
