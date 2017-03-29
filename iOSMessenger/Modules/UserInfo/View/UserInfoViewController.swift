//
//  UserInfoViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 02/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//

import Chamomile

// MARK: - UserInfoViewController

final class UserInfoViewController: UIViewController, FlowController {
    
    @IBOutlet weak var nickNameLabel: UILabel!

    // MARK: - VIPER stack
    let arrayTitle = ["FirstName","LastName","BirtDay","Sex"]

    @IBOutlet weak var tableView: UITableView!

    var presenter: UserInfoViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        let rightButton = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveInfoAboutUser))
        self.navigationItem.rightBarButtonItem = rightButton
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setup(tableView)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    func saveInfoAboutUser() {
        for i in 0...arrayTitle.count - 1{
            let indexPath = IndexPath(item: i, section: 0)
            let cell = tableView.cellForRow(at: indexPath) as! InfoTableViewCell
            self.presenter.checkToEmptyField(cell.textField.text!)
        }
    }

}

// MARK: - UserInfoViewInput

extension UserInfoViewController: UserInfoViewInput {
    func setup(_ tableView: UITableView) {
        tableView.allowsSelection = false
        self.navigationController?.navigationBar.tintColor = UIColor.black
        tableView.register(UINib(nibName: "InfoTableViewCell", bundle: nil), forCellReuseIdentifier: "infoTableViewCell")
    }

    func setupSubTitle(_ nickName: String) {
        if nickNameLabel != nil {
            nickNameLabel.text = nickName
        }
    }

    func showAlertWith(_ text: String) {
        let alertController = UIAlertController(title: "", message: text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
    }
}

extension UserInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoTableViewCell") as! InfoTableViewCell
        cell.setupTitle(arrayTitle, indexPath: indexPath)

        if indexPath.row == arrayTitle.count - 2 {
            cell.setupDatePicker()
        }

        if indexPath.row == arrayTitle.count - 1 {
            cell.setupSexSwitch()
        }

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitle.count
    }
}

extension UserInfoViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
