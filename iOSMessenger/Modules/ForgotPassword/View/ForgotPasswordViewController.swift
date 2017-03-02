//
//  ForgotPasswordViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - ForgotPasswordViewController

final class ForgotPasswordViewController: UIViewController, FlowController {

    @IBOutlet weak var emailAddress: CustomTextField!
    // MARK: - VIPER stack

    var presenter: ForgotPasswordViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setupNavController(navController: self.navigationController!)
        title = "Forgot Password"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func resendTap(_ sender: Any) {
        presenter.forgotPassword(email: emailAddress.text!)
    }

}

// MARK: - ForgotPasswordViewInput

extension ForgotPasswordViewController: ForgotPasswordViewInput {
    func showAlert(_ text: String) {
        let alert = AlertViewController().showAlertViewController(text)
        present(alert, animated: true, completion: nil)
    }
}
