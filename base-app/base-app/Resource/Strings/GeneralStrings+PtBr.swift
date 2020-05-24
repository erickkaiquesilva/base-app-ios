//
//  GeneralStrings+PtBr.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 15/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

public class AppStrings {
    private static let tableNameStrings = "GeneralStrings+PtBr"
    
    // MARK: - LocalizedString Intro
    public let slogan = localizedString(forKey: "slogan")
    // MARK: - LocalizedString SignIn
    public let placeholderEmailAccess = localizedString(forKey: "placeholderEmailAccess")
    public let placeholderpasswordAccess = localizedString(forKey: "placeholderpasswordAccess")
    public let signInBtn = localizedString(forKey: "signInBtn")
    public let notRegisteredBtn = localizedString(forKey: "notRegisteredBtn")
    
    // MARK: - LocalizedString SignUp
}

extension AppStrings {
    static func localizedString(forKey key: String) -> String {
        let bundle = Bundle(for: AppStrings.self)
        return NSLocalizedString(key, tableName: tableNameStrings, bundle: bundle, value: "", comment: "")
    }
}
