//
//  LoginRouter.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import Perform
import Chamomile

// MARK: - LoginRouter

final class LoginRouter {

    // MARK: - VIPER stack

    weak var flowController: FlowController!

}

// MARK: - LoginRouterInput

extension LoginRouter: LoginRouterInput {
    func openRegScreen(regViewOutput: RegistrationModuleOutput) {
        flowController.openModule(using: .openRegScreen, completion: {
            guard let moduleInput = $0 as? RegistrationModuleInput else { fatalError() }
            return regViewOutput
        })
    }

    func openForgotScreen(viewModuleOutput: ForgotPasswordModuleOutput) {
        flowController.openModule(using: .openForgotScreen, completion: {
            guard let moduleInput = $0 as? ForgotPasswordModuleInput else { fatalError() }
            return viewModuleOutput
        })
    }
}

extension Segue {
    static var openRegScreen: Segue<RegistrationViewController> {
        return .init(identifier: SegueIndentifier().regScreen)
    }

    static var openForgotScreen: Segue<ForgotPasswordViewController> {
        return .init(identifier: SegueIndentifier().forgotPassword)
    }
}
