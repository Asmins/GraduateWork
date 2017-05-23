//
//  MainModuleViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - MainModuleViewController

final class MainModuleViewController: UIViewController, FlowController {

    // MARK: - VIPER stack

    var presenter: MainModuleViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @objc fileprivate func logOutAction() {
        self.presenter.logOutUser()
    }

}

// MARK: - MainModuleViewInput

extension MainModuleViewController: MainModuleViewInput {
    func showLogOutButton() {
        let logOutButton = UIBarButtonItem(title: "LogOut", style: .done, target: self, action: #selector(logOutAction))
        self.navigationItem.leftBarButtonItem = logOutButton
    }
}
