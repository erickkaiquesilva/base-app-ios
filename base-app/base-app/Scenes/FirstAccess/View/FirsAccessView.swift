//
//  FirsAccessView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 24/05/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FirstAccessView: UIView {
    
    private lazy var firsAccessTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var firstAccessDescription: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var nextButton: ButtonDefault = {
        let buttonDefault = ButtonDefault()
        return buttonDefault
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = AppColors().whiteDefault
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
    }
    
    private func buildHierarchy() {
        
    }
    
    private func addConstraints() {
        
    }
}
