//
//  LoginRouterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseAuth
// MARK: - LoginRouterInput

protocol LoginRouterInput: class {
    func openMainModule(viewModuleOutput: MainModuleModuleOutput)
    func openUserInfo(userInfoModuleOutput: UserInfoModuleOutput, user:FIRUser)
    func openRegScreen(regViewOutput: RegistrationModuleOutput )
    func openForgotScreen(viewModuleOutput: ForgotPasswordModuleOutput )
}
