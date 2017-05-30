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
    func getGroups() {
        var arrayGroup = [Group]()
        let ref = FIRDatabase.database().reference(fromURL: "https://iosmessanger.firebaseio.com/groups")
        ref.observeSingleEvent(of: .value, with: { snapshot in
            let values = snapshot.value as? NSDictionary
            let arrayKeys = values?.allKeys
            for key in arrayKeys! {
                let data = values?[key] as? NSDictionary
                let group = Group(name: data?["nameGroup"] as! String, access: data?["access"] as! Bool, password: data?["password"] as! String)
                arrayGroup.append(group)
            }
            self.presenter.passGroup(arrayGroup)
        })
    }

    func logOutUser(action:()->()) {
        let fireBaseAuth = FIRAuth.auth()
        do {
            try fireBaseAuth?.signOut()
            action()
        } catch let error as Error {
            print(error.localizedDescription)
        }
    }
}
