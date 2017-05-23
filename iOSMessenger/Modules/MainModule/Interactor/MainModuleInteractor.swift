//
//  MainModuleInteractor.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import Firebase
import FirebaseAuth
// MARK: - MainModuleInteractor

final class MainModuleInteractor {

    // MARK: - VIPER stack

    weak var presenter: MainModuleInteractorOutput!

    // MARK: -

}

// MARK: - MainModuleInteractorInput

extension MainModuleInteractor: MainModuleInteractorInput {
    func logOutUser() {
        let fireBaseAuth = FIRAuth.auth()
        do {
            try fireBaseAuth?.signOut()
            presenter.dissmiss()
        } catch let error as Error {
            print(error.localizedDescription)
        }
    }
}
