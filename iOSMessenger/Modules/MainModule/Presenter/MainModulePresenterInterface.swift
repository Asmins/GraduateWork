//
//  MainModulePresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - MainModuleViewOutput

protocol MainModuleViewOutput: class {
    func logOutUser()
}

// MARK: - MainModuleInteractorOutput

protocol MainModuleInteractorOutput: class {
    func dissmiss()
}

// MARK: - MainModuleModuleInput

protocol MainModuleModuleInput: ModuleInput {
    func alredySignInOrNot(signIn:Bool)
}

// MARK: - MainModuleModuleOutput

protocol MainModuleModuleOutput: ModuleOutput {

}
