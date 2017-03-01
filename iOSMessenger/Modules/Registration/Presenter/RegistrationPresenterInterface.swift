//
//  RegistrationPresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 01/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import Chamomile

// MARK: - RegistrationViewOutput

protocol RegistrationViewOutput: class {
    func createUser(name: UITextField, email: UITextField, password: UITextField)
}

// MARK: - RegistrationInteractorOutput

protocol RegistrationInteractorOutput: class {
    func showAlert(_ text: String)
    func dissmisView()
}

// MARK: - RegistrationModuleInput

protocol RegistrationModuleInput: ModuleInput {

}

// MARK: - RegistrationModuleOutput

protocol RegistrationModuleOutput: ModuleOutput {

}
