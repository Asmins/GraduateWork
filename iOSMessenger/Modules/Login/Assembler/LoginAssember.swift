//
//  LoginAssember.swift
//  iOSMessenger
//
//  Created by Asmins on 22/02/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Foundation

// MARK: - LoginAssembler

final class LoginAssembler: NSObject {

    @IBOutlet weak var view: LoginViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
