//
//  MainModuleViewInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
// MARK: - MainModuleViewInput

protocol MainModuleViewInput: class {
    func showLogOutButton()
    func setGroups(_ groups: [Group])
    func setupTableView(_ tableView: UITableView)
}
