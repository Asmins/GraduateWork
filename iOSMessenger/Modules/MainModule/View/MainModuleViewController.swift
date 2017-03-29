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

}

// MARK: - MainModuleViewInput

extension MainModuleViewController: MainModuleViewInput {

}
