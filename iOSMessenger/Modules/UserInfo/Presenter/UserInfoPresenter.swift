//
//  UserInfoPresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseAuth
import Chamomile

// MARK: - UserInfoPresenter

final class UserInfoPresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: UserInfoViewInput!
    var interactor: UserInfoInteractorInput!
    var router: UserInfoRouterInput!

    var currentUser: FIRUser?
    var array = [String]()
}

// MARK: - UserInfoViewOutput

extension UserInfoPresenter: UserInfoViewOutput {
    func checkToEmptyField(_ text: String) {
        array.append(text)
        if array.count == 4 {
            interactor.checkToEmptyFields(array)
            array.removeAll()
        }
    }
}

// MARK: - UserInfoInteractorOutput

extension UserInfoPresenter: UserInfoInteractorOutput {
    func showAlert(_ text: String) {
        view.showAlertWith(text)
    }

    func openMainModule() {
        router.showMainModule(mainModuleOutput: self)
    }

    func saveInfoAboutUser(user: User) {
        interactor.saveInfoAboutUser(currentUser!, user: user)
    }
}

extension UserInfoPresenter: MainModuleModuleOutput {
    
}

// MARK: - UserInfoModuleInput

extension UserInfoPresenter: UserInfoModuleInput {
    func passUser(user: FIRUser) {
        self.currentUser = user
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute: {
            self.view.setupSubTitle(user.displayName!)
        })
    }
}
