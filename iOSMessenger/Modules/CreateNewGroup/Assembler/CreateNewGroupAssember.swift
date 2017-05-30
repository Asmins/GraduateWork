//
//  CreateNewGroupAssember.swift
//  iOSMessenger
//
//  Created by Asmins on 29/05/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Foundation

// MARK: - CreateNewGroupAssembler

final class CreateNewGroupAssembler: NSObject {

    @IBOutlet weak var view: CreateNewGroupViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = CreateNewGroupInteractor()
        let presenter = CreateNewGroupPresenter()
        let router = CreateNewGroupRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
