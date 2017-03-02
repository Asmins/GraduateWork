//
//  ForgotPasswordInteractor.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import FirebaseAuth
// MARK: - ForgotPasswordInteractor

final class ForgotPasswordInteractor {

    // MARK: - VIPER stack

    weak var presenter: ForgotPasswordInteractorOutput!

    // MARK: -

}

// MARK: - ForgotPasswordInteractorInput

extension ForgotPasswordInteractor: ForgotPasswordInteractorInput {
    func forgotPassword(email: String) {

        if email.characters.count == 0 {
            self.presenter.showAlert("Empty email address")
            return
        }

        if email.characters.count <= 6 {
            self.presenter.showAlert("Short email address")
            return
        }

        FIRAuth.auth()?.sendPasswordReset(withEmail: email, completion: { (error) in
            if error == nil {
                self.presenter.showAlert("Check you email")
            } else  {
                self.presenter.showAlert("Something went wrong")
            }
        })
    }
}
