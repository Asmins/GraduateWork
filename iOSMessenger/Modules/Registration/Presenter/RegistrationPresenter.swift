//
//  RegistrationPresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 01/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - RegistrationPresenter

final class RegistrationPresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: RegistrationViewInput!
    var interactor: RegistrationInteractorInput!
    var router: RegistrationRouterInput!

}

// MARK: - RegistrationViewOutput

extension RegistrationPresenter: RegistrationViewOutput {
    func createUser(name: UITextField, email: UITextField, password: UITextField) {
        interactor.createUser(name: name.text!, email: email.text!, password: password.text!)
    }
}

// MARK: - RegistrationInteractorOutput

extension RegistrationPresenter: RegistrationInteractorOutput {
    func showAlert(_ text: String) {
        view.showAlert(text)
    }

    func dissmisView() {
        self.router.dissmissView()
    }
}

// MARK: - RegistrationModuleInput

extension RegistrationPresenter: RegistrationModuleInput {

}
