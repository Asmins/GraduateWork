//
//  MainModulePresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - MainModulePresenter

final class MainModulePresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: MainModuleViewInput!
    var interactor: MainModuleInteractorInput!
    var router: MainModuleRouterInput!

}

// MARK: - MainModuleViewOutput

extension MainModulePresenter: MainModuleViewOutput {
    func logOutUser(action:()->()) {
        interactor.logOutUser(action: action)
    }

    func openCreateNewGroupView() {
        router.openCreateNewGroupView(newGroupView: self)
    }

    func getGroups() {
        interactor.getGroups()
    }
}

// MARK: - MainModuleInteractorOutput

extension MainModulePresenter: MainModuleInteractorOutput {
    func dissmiss() {
        router.dissmiss()
    }

    func passGroup(_ groups: [Group]) {
        self.view.setGroups(groups)
    }
}

// MARK: - MainModuleModuleInput

extension MainModulePresenter: MainModuleModuleInput {
    func alredySignInOrNot(signIn: Bool) {
        if signIn {
            self.view.showLogOutButton()
        }
    }
}

extension MainModulePresenter: CreateNewGroupModuleOutput {

}

