//
//  LoginInteractor.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import FirebaseAuth

// MARK: - LoginInteractor

final class LoginInteractor {

    // MARK: - VIPER stack

    weak var presenter: LoginInteractorOutput!

    // MARK: -

    func validate(_ email: String ) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }

}

// MARK: - LoginInteractorInput

extension LoginInteractor: LoginInteractorInput {

    func loginUser(email: String, password: String, button: UIButton) {

        if email.characters.count == 0 {
            self.presenter.showAlert(text: "Empty Email Address")
            return
        }

        if email.characters.count <= 5 {
            self.presenter.showAlert(text: "Short Email Address")
            return
        }

        if password.characters.count == 0 {
            self.presenter.showAlert(text: "Empty Password")
            return
        }

        if password.characters.count <= 6 {
            self.presenter.showAlert(text: "Short Password")
            return
        }

        if validate(email) {
            FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
                if error != nil {
                    self.presenter.showAlert(text: "The password is invalid or the user does not have a password.")
                } else {
                    self.checkToConfirmUserEmail(user!, button: button)
                }
            })
        }
    }

    func resendEmailConfirm() {
        FIRAuth.auth()?.currentUser?.sendEmailVerification(completion: { (error) in
            if error == nil {
                self.presenter.showAlert(text: "Mail was send")
            }
        })
    }

    func checkToConfirmUserEmail(_ user: FIRUser, button: UIButton) {
        if user.isEmailVerified {
            self.presenter.openUserInfo()
        } else {
            button.isHidden = false
            self.presenter.showAlert(text: "You email don`t confirmation")
        }
    }

}
