//
//  MainModuleRouter.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - MainModuleRouter

final class MainModuleRouter {

    // MARK: - VIPER stack

    weak var flowController: FlowController!

}

// MARK: - MainModuleRouterInput

extension MainModuleRouter: MainModuleRouterInput {
    func dissmiss() {
        flowController.closeModule(animated: true)
    }
}
