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

}

// MARK: - RegistrationInteractorOutput

extension RegistrationPresenter: RegistrationInteractorOutput {

}

// MARK: - RegistrationModuleInput

extension RegistrationPresenter: RegistrationModuleInput {

}
