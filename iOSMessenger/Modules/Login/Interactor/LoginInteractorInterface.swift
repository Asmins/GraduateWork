//
//  LoginInteractorInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseAuth
// MARK: - LoginInteractorInput

protocol LoginInteractorInput: class {
    func checkToConfirmUserEmail(_ user: FIRUser)
    func forgotPassword(email: String)
    func loginUser(email: String, password: String)
}
