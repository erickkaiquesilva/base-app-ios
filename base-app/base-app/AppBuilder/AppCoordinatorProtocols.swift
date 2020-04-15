//
//  AppCoordinatorProtocols.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 14/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol AppCoordinatorProtocol: class {
    var currentCoordinator: AppCoordinatorProtocol? { get set }
    func start()
}
