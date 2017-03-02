//
//  AlertViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 02.03.17.
//  Copyright © 2017 Asmins. All rights reserved.
//
import UIKit
import Foundation

struct AlertViewController {
    func showAlertViewController(_ text :String ) -> UIAlertController {
        let alert = UIAlertController(title: "", message: text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        return alert
    }
}
