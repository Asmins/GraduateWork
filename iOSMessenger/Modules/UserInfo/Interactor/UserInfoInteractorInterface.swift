//
//  UserInfoInteractorInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseAuth
// MARK: - UserInfoInteractorInput

protocol UserInfoInteractorInput: class {
    func checkToEmptyFields(_ array: [String])
    func checkAlredyHaveInfoInDataBase(_ user: FIRUser)
    func saveInfoAboutUser(_ userFromFIR: FIRUser,user: User)
}
