//
//  CreateNewGroupViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 29/05/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import UIKit
import Chamomile

// MARK: - CreateNewGroupViewController

final class CreateNewGroupViewController: UIViewController, FlowController {

    @IBOutlet weak var tableView: UITableView!
    // MARK: - VIPER stack

    var presenter: CreateNewGroupViewOutput!

    var nameTextField = UITextField()
    var passwordTextField = UITextField()

    var name = ""
    var access = false
    var password = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup(tableView)
    }

    @objc fileprivate func saveName(nameTextField: UITextField) {
        self.name = nameTextField.text!
    }

    @objc fileprivate func saveAccess(switchAccess: UISwitch) {
        self.access = switchAccess.isOn
        if self.access == false {
            self.passwordTextField.text = ""
            self.passwordTextField.isUserInteractionEnabled = false
        } else {
            self.passwordTextField.isUserInteractionEnabled = true
        }
    }

    @objc fileprivate func savePassword(passwordTextField: UITextField) {
        self.password = passwordTextField.text!
    }
}

// MARK: - CreateNewGroupViewInput

extension CreateNewGroupViewController: CreateNewGroupViewInput {
    func setup(_ tableView: UITableView) {
        tableView.register(UINib(nibName: "InfoTableViewCell", bundle: nil), forCellReuseIdentifier: "infoTableViewCell")
        tableView.register(UINib(nibName: "SubTitleTableViewCell", bundle: nil), forCellReuseIdentifier: "subTitleTableViewCell")
        tableView.register(UINib(nibName: "AccessTableViewCell", bundle: nil), forCellReuseIdentifier: "accessTableViewCell")
    }
}

extension CreateNewGroupViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let aCell = tableView.dequeueReusableCell(withIdentifier: "subTitleTableViewCell") as! SubTitleTableViewCell
            aCell.inputTextField.addTarget(self, action: #selector(self.saveName(nameTextField:)), for: .editingChanged)
            cell = aCell
        case 1:
            let aCell = tableView.dequeueReusableCell(withIdentifier: "accessTableViewCell") as! AccessTableViewCell
            aCell.accessSwitch.addTarget(self, action: #selector(saveAccess(switchAccess:)), for: .valueChanged)
            cell = aCell
        case 2:
            let aCell = tableView.dequeueReusableCell(withIdentifier: "subTitleTableViewCell") as! SubTitleTableViewCell
            self.passwordTextField = aCell.inputTextField
            self.passwordTextField.isSecureTextEntry = true
            self.passwordTextField.addTarget(self, action: #selector(self.savePassword(passwordTextField:)), for: .editingChanged)
            aCell.changeTitleAndSubTitle("Password", textForSubTitle: "Password for private group")
            cell = aCell
        case 3:
            let aCell = tableView.dequeueReusableCell(withIdentifier: "infoTableViewCell") as! InfoTableViewCell
            aCell.textField.text = "Save"
            aCell.textField.isUserInteractionEnabled = false
            aCell.textField.textColor = UIColor.red
            cell = aCell
        default:
            break
        }
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}

extension CreateNewGroupViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 3 {
            if access == false {
                self.presenter.saveGroup(name, access: access, password: "")
            } else {
                self.presenter.saveGroup(name, access: access, password: password)
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 74
        case 1:
            return 44
        case 2:
            return 74
        case 3:
            return 54
        default:
            return 0
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
}
