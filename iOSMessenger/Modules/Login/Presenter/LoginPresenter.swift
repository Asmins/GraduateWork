//
//  LoginPresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseAuth
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

    func checkValidToken() {
        interactor.checkValidToken()
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

    func openUserInfo(user: FIRUser) {
        router.openUserInfo(userInfoModuleOutput: self,user: user)
    }

    func openMainModule() {
        router.openMainModule(viewModuleOutput: self)
    }

}

// MARK: - LoginModuleInput

extension LoginPresenter: LoginModuleInput {

}

extension LoginPresenter: RegistrationModuleOutput, ForgotPasswordModuleOutput, UserInfoModuleOutput,MainModuleModuleOutput {
    
}
