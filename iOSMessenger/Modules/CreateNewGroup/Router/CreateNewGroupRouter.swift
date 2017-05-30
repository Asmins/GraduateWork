//
//  CreateNewGroupRouter.swift
//  iOSMessenger
//
//  Created by Asmins on 29/05/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - CreateNewGroupRouter

final class CreateNewGroupRouter {

    // MARK: - VIPER stack

    weak var flowController: FlowController!

}

// MARK: - CreateNewGroupRouterInput

extension CreateNewGroupRouter: CreateNewGroupRouterInput {
    func dissmis() {
        flowController.closeModule(animated: true)
    }
}
