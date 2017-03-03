//
//  LoginPresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import Chamomile

// MARK: - LoginViewOutput

protocol LoginViewOutput: class {
    func openRegScreen()
    func openForgotPassword()
    func resendEmailConfirm()
    func loginUser(email: UITextField, password: UITextField, button: UIButton)
}

// MARK: - LoginInteractorOutput

protocol LoginInteractorOutput: class {
    func showAlert(text: String)
    func openUserInfo()
}

// MARK: - LoginModuleInput

protocol LoginModuleInput: ModuleInput {

}

// MARK: - LoginModuleOutput

protocol LoginModuleOutput: ModuleOutput {

}
