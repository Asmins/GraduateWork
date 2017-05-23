//
//  LoginInteractorInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import FirebaseAuth
// MARK: - LoginInteractorInput

protocol LoginInteractorInput: class {
    func resendEmailConfirm()
    func checkValidToken()
    func checkToConfirmUserEmail(_ user: FIRUser, button: UIButton)
    func loginUser(email: String, password: String, button: UIButton)
}
