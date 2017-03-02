//
//  RegistrationViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 01/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import Chamomile

// MARK: - RegistrationViewController

final class RegistrationViewController: UIViewController, FlowController {

    @IBOutlet weak var nameTextField: CustomTextField!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    // MARK: - VIPER stack

    var presenter: RegistrationViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setupNavController(navController: self.navigationController!)
        title = "Registration"
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func signUp(_ sender: Any) {
        presenter.createUser(name: nameTextField, email: emailTextField, password: passwordTextField)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}

// MARK: - RegistrationViewInput

extension RegistrationViewController: RegistrationViewInput {
    func showAlert(_ text: String) {
        let alertController = UIAlertController(title: "", message: text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(ok)
        present(alertController, animated: true, completion: nil)
    }
}
