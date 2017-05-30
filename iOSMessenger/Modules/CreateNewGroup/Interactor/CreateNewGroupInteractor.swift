//
//  CreateNewGroupInteractor.swift
//  iOSMessenger
//
//  Created by Asmins on 29/05/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import Firebase
import FirebaseAuth
import FirebaseDatabase
// MARK: - CreateNewGroupInteractor

final class CreateNewGroupInteractor {

    // MARK: - VIPER stack

    weak var presenter: CreateNewGroupInteractorOutput!

    // MARK: -

}

// MARK: - CreateNewGroupInteractorInput

extension CreateNewGroupInteractor: CreateNewGroupInteractorInput {


    func saveGroup(group: Group) {
        let ref = FIRDatabase.database().reference(fromURL: "https://iosmessanger.firebaseio.com/groups")
        let group: [String: Any] = ["nameGroup":group.nameOfGroup,
                    "access": group.access,
                    "password":group.password]
        ref.childByAutoId().setValue(group)
    }  
}
