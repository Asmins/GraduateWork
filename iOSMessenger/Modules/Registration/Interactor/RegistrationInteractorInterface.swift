//
//  RegistrationInteractorInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 01/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

// MARK: - RegistrationInteractorInput

protocol RegistrationInteractorInput: class {
    func createUser(name: String, email: String, password: String)
}
