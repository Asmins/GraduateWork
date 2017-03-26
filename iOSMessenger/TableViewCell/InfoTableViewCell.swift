//
//  InfoTableViewCell.swift
//  iOSMessenger
//
//  Created by Asmins on 14.03.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupTitle(_ text: [String], indexPath: IndexPath) {
        self.textField.placeholder = text[indexPath.row]
    }

    func setupDatePicker() {
        self.textField.setupDatePicker()
    }

    func setupSexSwitch() {
        self.textField.setupSexPickerView()
    }

}
