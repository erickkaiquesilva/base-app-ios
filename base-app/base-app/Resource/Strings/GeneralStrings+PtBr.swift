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
    public let signInButton = localizedString(forKey: "signInButton")
    public let signUpButton = localizedString(forKey: "signUpButton")
    // MARK: - LocalizedString SignIn
    public let placeholderEmailAccess = localizedString(forKey: "placeholderEmailAccess")
    public let placeholderpasswordAccess = localizedString(forKey: "placeholderpasswordAccess")
    public let signInBtn = localizedString(forKey: "signInBtn")
    public let notRegisteredBtn = localizedString(forKey: "notRegisteredBtn")
    public let writeCredentials = localizedString(forKey: "writeCredentials")
    // MARK: - LocalizedString SignUp
    public let placeholderName = localizedString(forKey: "placeholderName")
    public let placeholderCPF = localizedString(forKey: "placeholderCPF")
    public let placeholderEmail = localizedString(forKey: "placeholderEmail")
    public let placeholderPassword = localizedString(forKey: "placeholderPassword")
    public let finishRegister = localizedString(forKey: "finishRegister")
    // MARK: - LocalizedString Welcome
    public let descriptionWelcome = localizedString(forKey: "descriptionWelcome")
    public let titleWelcome = localizedString(forKey: "titleWelcome")
    public let initialButton = localizedString(forKey: "initialButton")
    // MARK: - LocalizedString FirstAccess
    public let welcomeFirstAccess = localizedString(forKey: "welcomeFirstAccess")
    public let whoWeAre = localizedString(forKey: "whoWeAre")
    public let whatRecycle = localizedString(forKey: "whatRecycle")
    public let descriptionRecycle = localizedString(forKey: "descriptionRecycle")
    public let whatDoYouGet = localizedString(forKey: "whatDoYouGet")
    public let descriptionWhatDoYouGet = localizedString(forKey: "descriptionWhatDoYouGet")
}

extension AppStrings {
    static func localizedString(forKey key: String) -> String {
        let bundle = Bundle(for: AppStrings.self)
        return NSLocalizedString(key, tableName: tableNameStrings, bundle: bundle, value: "", comment: "")
    }
}
