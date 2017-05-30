//
//  CreateNewGroupPresenterInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 29/05/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - CreateNewGroupViewOutput

protocol CreateNewGroupViewOutput: class {
    func saveGroup(_ name: String, access: Bool, password: String)
}

// MARK: - CreateNewGroupInteractorOutput

protocol CreateNewGroupInteractorOutput: class {

}

// MARK: - CreateNewGroupModuleInput

protocol CreateNewGroupModuleInput: ModuleInput {

}

// MARK: - CreateNewGroupModuleOutput

protocol CreateNewGroupModuleOutput: ModuleOutput {

}
