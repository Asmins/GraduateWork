//
//  LoginPresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import Chamomile
import FirebaseAuth
// MARK: - LoginViewOutput

protocol LoginViewOutput: class {
    func openRegScreen()
    func checkValidToken()
    func openForgotPassword()
    func resendEmailConfirm()
    func loginUser(email: UITextField, password: UITextField, button: UIButton)
}

// MARK: - LoginInteractorOutput

protocol LoginInteractorOutput: class {
    func showAlert(text: String)
    func openUserInfo(user: FIRUser)
    func openMainModule()
}

// MARK: - LoginModuleInput

protocol LoginModuleInput: ModuleInput {

}

// MARK: - LoginModuleOutput

protocol LoginModuleOutput: ModuleOutput {

}
