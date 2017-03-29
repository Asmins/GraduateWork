//
//  MainModuleAssember.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Foundation

// MARK: - MainModuleAssembler

final class MainModuleAssembler: NSObject {

    @IBOutlet weak var view: MainModuleViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = MainModuleInteractor()
        let presenter = MainModulePresenter()
        let router = MainModuleRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
