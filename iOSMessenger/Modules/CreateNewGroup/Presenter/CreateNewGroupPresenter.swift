//
//  CreateNewGroupPresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 29/05/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - CreateNewGroupPresenter

final class CreateNewGroupPresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: CreateNewGroupViewInput!
    var interactor: CreateNewGroupInteractorInput!
    var router: CreateNewGroupRouterInput!

}

// MARK: - CreateNewGroupViewOutput

extension CreateNewGroupPresenter: CreateNewGroupViewOutput {
    func saveGroup(_ name: String, access: Bool, password: String) {
        self.interactor.saveGroup(group: Group(name: name, access: access, password: password))
        self.router.dissmis()
    }
}

// MARK: - CreateNewGroupInteractorOutput

extension CreateNewGroupPresenter: CreateNewGroupInteractorOutput {

}

// MARK: - CreateNewGroupModuleInput

extension CreateNewGroupPresenter: CreateNewGroupModuleInput {

}
