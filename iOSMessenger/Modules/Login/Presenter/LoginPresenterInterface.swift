//
//  LoginPresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import Chamomile

// MARK: - LoginViewOutput

protocol LoginViewOutput: class {
    func loginUser(email: UITextField, password: UITextField)
}

// MARK: - LoginInteractorOutput

protocol LoginInteractorOutput: class {
    func showAlert(text: String)
}

// MARK: - LoginModuleInput

protocol LoginModuleInput: ModuleInput {

}

// MARK: - LoginModuleOutput

protocol LoginModuleOutput: ModuleOutput {

}
