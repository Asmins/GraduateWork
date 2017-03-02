//
//  CustomNavController.swift
//  iOSMessenger
//
//  Created by Asmins on 02.03.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

import UIKit

extension UINavigationController {

    func setupNavController(navController: UINavigationController) {
        navController.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.black]
        navController.navigationBar.tintColor = UIColor.black
        navController.navigationBar.backgroundColor = UIColor.gray
        navController.navigationBar.isTranslucent = true
    }
}
