//
//  UserInfoPresenter.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - UserInfoPresenter

final class UserInfoPresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: UserInfoViewInput!
    var interactor: UserInfoInteractorInput!
    var router: UserInfoRouterInput!

}

// MARK: - UserInfoViewOutput

extension UserInfoPresenter: UserInfoViewOutput {

}

// MARK: - UserInfoInteractorOutput

extension UserInfoPresenter: UserInfoInteractorOutput {

}

// MARK: - UserInfoModuleInput

extension UserInfoPresenter: UserInfoModuleInput {

}
