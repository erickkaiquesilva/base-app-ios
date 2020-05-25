//
//  FirstAccessProtocols.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

protocol FirsAccessViewType: class {
    func show(model: FirstAccessModel)
}

protocol FirstAccessViewModelType: class {
    var bindViewModels: (([FirstAccessModel]) -> Void)? { get set }
    func loadModels()
}

protocol FirstAccessPageViewControllerType: class {
    func show(models: [FirstAccessModel])
}
