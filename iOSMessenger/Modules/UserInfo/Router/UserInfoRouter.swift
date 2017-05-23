//
//  UserInfoRouter.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import Perform
import Chamomile

// MARK: - UserInfoRouter

final class UserInfoRouter {

    // MARK: - VIPER stack

    weak var flowController: FlowController!

}

// MARK: - UserInfoRouterInput

extension UserInfoRouter: UserInfoRouterInput {
    func showMainModule(mainModuleOutput: MainModuleModuleOutput) {
        flowController.openModule(using: .openMainModule, completion: {
            guard let moduleInput = $0 as? MainModuleModuleInput else { fatalError() }
            moduleInput.alredySignInOrNot(signIn: true)
            return mainModuleOutput
        })
    }
}

extension Segue {
    static var openMainModule: Segue<MainModuleViewController> {
        return .init(identifier: SegueIndentifier().mainModule)
    }
}
