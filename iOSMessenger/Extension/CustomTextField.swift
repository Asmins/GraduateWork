//
//  CustomTextField.swift
//  iOSMessenger
//
//  Created by Asmins on 28.02.17.
//  Copyright © 2017 Asmins. All rights reserved.
//
import UIKit
@IBDesignable
class CustomTextField: UITextField {

    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 2.0
    }

}
