//
//  LoginPresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - LoginPresenter

final class LoginPresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: LoginViewInput!
    var interactor: LoginInteractorInput!
    var router: LoginRouterInput!

}

// MARK: - LoginViewOutput

extension LoginPresenter: LoginViewOutput {
    func loginUser(email: UITextField, password: UITextField, button: UIButton) {
        interactor.loginUser(email: email.text!, password: password.text!, button: button)
    }
    
    func openRegScreen() {
        router.openRegScreen(regViewOutput: self)
    }

    func openForgotPassword() {
        router.openForgotScreen(viewModuleOutput: self)
    }

    func resendEmailConfirm() {
        interactor.resendEmailConfirm()
    }
}

// MARK: - LoginInteractorOutput

extension LoginPresenter: LoginInteractorOutput {
    func showAlert(text: String) {
        view.showAlert(text: text)
    }
}

// MARK: - LoginModuleInput

extension LoginPresenter: LoginModuleInput {

}

extension LoginPresenter: RegistrationModuleOutput, ForgotPasswordModuleOutput {
    
}
