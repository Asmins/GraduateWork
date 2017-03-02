//
//  ForgotPasswordAssember.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Foundation

// MARK: - ForgotPasswordAssembler

final class ForgotPasswordAssembler: NSObject {

    @IBOutlet weak var view: ForgotPasswordViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = ForgotPasswordInteractor()
        let presenter = ForgotPasswordPresenter()
        let router = ForgotPasswordRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
