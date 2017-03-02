//
//  ForgotPasswordPresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - ForgotPasswordPresenter

final class ForgotPasswordPresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: ForgotPasswordViewInput!
    var interactor: ForgotPasswordInteractorInput!
    var router: ForgotPasswordRouterInput!

}

// MARK: - ForgotPasswordViewOutput

extension ForgotPasswordPresenter: ForgotPasswordViewOutput {
    func forgotPassword(email: String) {
        interactor.forgotPassword(email: email)
    }
}

// MARK: - ForgotPasswordInteractorOutput

extension ForgotPasswordPresenter: ForgotPasswordInteractorOutput {
    func showAlert(_ text: String) {
        view.showAlert(text)
    }
}

// MARK: - ForgotPasswordModuleInput

extension ForgotPasswordPresenter: ForgotPasswordModuleInput {

}
