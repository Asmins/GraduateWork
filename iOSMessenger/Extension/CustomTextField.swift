//
//  CustomTextField.swift
//  iOSMessenger
//
//  Created by Asmins on 28.02.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 2.0

    }

}
