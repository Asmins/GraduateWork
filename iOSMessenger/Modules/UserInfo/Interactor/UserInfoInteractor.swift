//
//  UserInfoInteractor.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseDatabase
import FirebaseAuth
// MARK: - UserInfoInteractor

final class UserInfoInteractor {

    // MARK: - VIPER stack

    var fields = [String]()
    var user = User()
    weak var presenter: UserInfoInteractorOutput!

    // MARK: -

    func setupUserModel(_ text: String) {
        if user.firstName == nil {
            user.firstName = text
        } else if user.lastName == nil {
            user.lastName = text
        } else if user.birtday == nil {
            user.birtday = text
        } else if user.sex == nil {
            user.sex = text
            save()
        }
    }

    func save() {
        if user != nil {
            self.presenter.saveInfoAboutUser(user: user)
        } else {
            print("Some error")
        }
    }

    func checkAlredyHaveInfoInDataBase(_ user: FIRUser) {
        let ref = FIRDatabase.database().reference(fromURL: "https://iosmessanger.firebaseio.com/users/\(user.uid)")
        ref.observe(.value, with: { snapshot in
            let value = snapshot.value as? NSDictionary
            if value != nil {
                self.presenter.openMainModule()
            } else {
                self.presenter.setupView(user)
            }
        })
    }
}

// MARK: - UserInfoInteractorInput

extension UserInfoInteractor: UserInfoInteractorInput {
    func checkToEmptyFields(_ array: [String]) {
        for value in array {
            if value == "" {
                presenter.showAlert("Empty Field")
                return
            } else {
                setupUserModel(value)
            }
        }
    }

    func saveInfoAboutUser(_ userFromFIR: FIRUser, user: User) {
        let ref = FIRDatabase.database().reference(fromURL: "https://iosmessanger.firebaseio.com/users/\(userFromFIR.uid)")
        let infoAboutUser = ["firstName": user.firstName,
                             "lastName": user.lastName,
                             "birthDay": user.birtday,
                             "sex": user.sex]
        DispatchQueue.main.async {
            ref.updateChildValues(infoAboutUser)
            self.presenter.openMainModule()
        }
    }
}
