//
//  UserInfoViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - UserInfoViewController

final class UserInfoViewController: UIViewController, FlowController {

    // MARK: - VIPER stack

    var presenter: UserInfoViewOutput!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

}

// MARK: - UserInfoViewInput

extension UserInfoViewController: UserInfoViewInput {

}
