//
//  UserInfoAssember.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Foundation

// MARK: - UserInfoAssembler

final class UserInfoAssembler: NSObject {

    @IBOutlet weak var view: UserInfoViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = UserInfoInteractor()
        let presenter = UserInfoPresenter()
        let router = UserInfoRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
