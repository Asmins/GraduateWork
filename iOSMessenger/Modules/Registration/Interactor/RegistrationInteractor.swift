//
//  RegistrationInteractor.swift
//  iOSMessenger
//
//  Created by Asmins on 01/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseDatabase
import FirebaseAuth
// MARK: - RegistrationInteractor

final class RegistrationInteractor {

    // MARK: - VIPER stack

    weak var presenter: RegistrationInteractorOutput!

    // MARK: -

    func validate(_ email: String ) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }

    func addUserInDataBase(_ userName: String, userEmail: String, userID: String) {
        let ref = FIRDatabase.database().reference(fromURL: "https://iosmessanger.firebaseio.com/users")
        let user = ["userName":userName,
                    "userEmail": userEmail]
        ref.child(userID).setValue(user)
    }

}

// MARK: - RegistrationInteractorInput

extension RegistrationInteractor: RegistrationInteractorInput {
    func createUser(name: String, email: String, password: String) {

        if name.characters.count <= 3 {
            self.presenter.showAlert("Short name")
            return
        }

        if email.characters.count <= 6 {
            self.presenter.showAlert("Short email")
            return
        }

        if validate(email) {
            DispatchQueue.main.async {
                FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
                    if error == nil {
                        let currentUser = user?.profileChangeRequest()
                        currentUser?.displayName = name
                        currentUser?.commitChanges(completion: nil)
                        FIRAuth.auth()?.currentUser?.sendEmailVerification(completion: nil)
                        let userID = FIRAuth.auth()?.currentUser?.uid
                        self.addUserInDataBase((currentUser?.displayName)!, userEmail: email, userID: userID!)
                        self.presenter.dissmisView()
                    } else {
                        self.presenter.showAlert((error?.localizedDescription)!)
                    }
                })
            }
        } else {
            self.presenter.showAlert("Incorrect Email Address")
        }

    }
}
