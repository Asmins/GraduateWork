//
//  Group.swift
//  iOSMessenger
//
//  Created by Asmins on 30.05.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

import Foundation

class Group {
    var nameOfGroup: String?
    var access: Bool?
    var password: String?

    init(name: String, access: Bool, password: String) {
        self.nameOfGroup = name
        self.access = access
        self.password = password
    }
}
