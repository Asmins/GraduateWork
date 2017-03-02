//
//  ForgotPasswordPresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - ForgotPasswordViewOutput

protocol ForgotPasswordViewOutput: class {
    func forgotPassword(email: String)
}

// MARK: - ForgotPasswordInteractorOutput

protocol ForgotPasswordInteractorOutput: class {
    func showAlert(_ text: String)
}

// MARK: - ForgotPasswordModuleInput

protocol ForgotPasswordModuleInput: ModuleInput {

}

// MARK: - ForgotPasswordModuleOutput

protocol ForgotPasswordModuleOutput: ModuleOutput {

}
