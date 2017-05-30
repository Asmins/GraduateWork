//
//  AccessTableViewCell.swift
//  iOSMessenger
//
//  Created by Asmins on 29.05.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

import UIKit

class AccessTableViewCell: UITableViewCell {

    @IBOutlet weak var accessSwitch: UISwitch!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
