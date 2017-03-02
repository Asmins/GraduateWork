//
//  LoginRouterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

// MARK: - LoginRouterInput

protocol LoginRouterInput: class {
    func openRegScreen(regViewOutput: RegistrationModuleOutput )
    func openForgotScreen(viewModuleOutput: ForgotPasswordModuleOutput )
}
