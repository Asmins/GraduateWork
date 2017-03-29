//
//  UserInfoPresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseAuth
import Chamomile

// MARK: - UserInfoViewOutput

protocol UserInfoViewOutput: class {
    func checkToEmptyField(_ text: String)
}

// MARK: - UserInfoInteractorOutput

protocol UserInfoInteractorOutput: class {
    func showAlert(_ text: String)
    func openMainModule()
    func saveInfoAboutUser(user: User)
}

// MARK: - UserInfoModuleInput

protocol UserInfoModuleInput: ModuleInput {
    func passUser(user: FIRUser)
}

// MARK: - UserInfoModuleOutput

protocol UserInfoModuleOutput: ModuleOutput {

}
