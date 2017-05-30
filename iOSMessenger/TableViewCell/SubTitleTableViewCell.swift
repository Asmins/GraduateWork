//
//  SubTitleTableViewCell.swift
//  iOSMessenger
//
//  Created by Asmins on 29.05.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

import UIKit

class SubTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var title: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func changeTitleAndSubTitle(_ textForTitle: String, textForSubTitle: String) {
        self.title.text = textForTitle
        self.inputTextField.placeholder = textForSubTitle
    }

}
