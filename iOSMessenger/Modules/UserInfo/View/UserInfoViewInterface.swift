//
//  UserInfoViewInterface.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
// MARK: - UserInfoViewInput

protocol UserInfoViewInput: class {
    func setup(_ tableView: UITableView)
    func setupSubTitle(_ nickName: String)
}
