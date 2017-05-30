//
//  MainModuleInteractorInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

// MARK: - MainModuleInteractorInput

protocol MainModuleInteractorInput: class {
    func logOutUser(action:()->())
    func getGroups()
}
