//
//  LoginViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import Chamomile

// MARK: - LoginViewController

final class LoginViewController: UIViewController, FlowController {

    @IBOutlet weak var resendButton: UIButton!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    // MARK: - VIPER stack

    var presenter: LoginViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        resendButton.isHidden = true
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

    @IBAction func loginTap(_ sender: Any) {
        presenter.loginUser(email: emailTextField, password: passwordTextField, button: resendButton)
    }

    @IBAction func registrationUser(_ sender: Any) {
        presenter.openRegScreen()
    }

    @IBAction func resendConfirmationEmailTap(_ sender: Any) {
        presenter.resendEmailConfirm()
    }

    @IBAction func forgotPassword(_ sender: Any) {
        presenter.openForgotPassword()
    }
}

// MARK: - LoginViewInput

extension LoginViewController: LoginViewInput {
    func showAlert(text: String) {
        let alert = UIAlertController(title: nil, message: text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
