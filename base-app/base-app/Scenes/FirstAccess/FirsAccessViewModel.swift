//
//  FirsAccessViewModel.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FirstAccessViewModel: FirstAccessViewModelType {
    var bindViewModels: (([FirstAccessModel]) -> Void)?
    var models = [FirstAccessModel]() {
        didSet {
            bindViewModels?(models)
        }
    }
    
    private func modelFactory(title: String, description: String, image: UIImage) -> FirstAccessModel {
        let model = FirstAccessModel(title: title,
                                     description: description,
                                     imageIcon: image)
        
        return model
    }
    
    func loadModels() {
        createModels()
    }
    
    private func createModels() {
        var models = [FirstAccessModel]()
        models.append(FirstAccessModel(title: AppStrings().welcomeFirstAccess.uppercased(),
                                       description: AppStrings().whoWeAre.uppercased(),
                                       imageIcon: AppImages().earthIcon))
        models.append(FirstAccessModel(title: AppStrings().whatRecycle.uppercased(),
                                       description: AppStrings().descriptionRecycle.uppercased(),
                                       imageIcon: AppImages().recycleIcon))
        models.append(FirstAccessModel(title: AppStrings().whatDoYouGet.uppercased(),
                                       description: AppStrings().descriptionWhatDoYouGet.uppercased(),
                                       imageIcon: AppImages().recycleIcon))
        self.models = models
    }
}
