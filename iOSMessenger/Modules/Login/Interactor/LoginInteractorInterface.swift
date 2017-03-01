//
//  LoginInteractorInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

// MARK: - LoginInteractorInput

protocol LoginInteractorInput: class {
    func forgotPassword(email: String)
    func loginUser(email: String, password: String)
}
