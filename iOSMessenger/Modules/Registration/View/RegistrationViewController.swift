//
//  RegistrationViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 01/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - RegistrationViewController

final class RegistrationViewController: UIViewController, FlowController {

    // MARK: - VIPER stack

    var presenter: RegistrationViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Registration"
        setupNavController()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    func setupNavController() {
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.black]
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.backgroundColor = UIColor.gray
        self.navigationController?.navigationBar.isTranslucent = true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}

// MARK: - RegistrationViewInput

extension RegistrationViewController: RegistrationViewInput {

}
