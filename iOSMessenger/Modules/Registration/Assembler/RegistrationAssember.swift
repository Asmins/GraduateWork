//
//  RegistrationAssember.swift
//  iOSMessenger
//
//  Created by Asmins on 01/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Foundation

// MARK: - RegistrationAssembler

final class RegistrationAssembler: NSObject {

    @IBOutlet weak var view: RegistrationViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = RegistrationInteractor()
        let presenter = RegistrationPresenter()
        let router = RegistrationRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
