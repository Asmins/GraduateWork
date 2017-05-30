//
//  MainModuleViewController.swift
//  iOSMessenger
//
//  Created by Asmins on 29/03/2017.
//  Copyright © 2017 GraduateWork. All rights reserved.
//
import Chamomile

// MARK: - MainModuleViewController

final class MainModuleViewController: UIViewController, FlowController {

    // MARK: - VIPER stack

    @IBOutlet weak var segmentController: UISegmentedControl!
    @IBOutlet weak var tableVIew: UITableView!

    var group = [Group]()

    var presenter: MainModuleViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView(tableVIew)
        self.presenter.getGroups()
    }

    @objc fileprivate func logOutAction() {
        self.presenter.logOutUser(action: {
            self.navigationController?.popToRootViewController(animated: true)
        })
    }

    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentController.selectedSegmentIndex {
        case 0:
            self.presenter.getGroups()
        case 1:
            print("Users")
        default:
            break
        }
    }

}

// MARK: - MainModuleViewInput

extension MainModuleViewController: MainModuleViewInput {
    func showLogOutButton() {
        let logOutButton = UIBarButtonItem(title: "LogOut", style: .done, target: self, action: #selector(logOutAction))
        logOutButton.tintColor = UIColor.black
        self.navigationItem.leftBarButtonItem = logOutButton
    }

    func setupTableView(_ tableView: UITableView) {
        tableView.register(UINib(nibName: "InfoTableViewCell", bundle: nil), forCellReuseIdentifier: "infoTableViewCell")
    }

    func setGroups(_ groups: [Group]) {
        self.group = groups
        tableVIew.reloadData()
    }
}

extension MainModuleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0 {
            let aCell = tableView.dequeueReusableCell(withIdentifier: "infoTableViewCell") as! InfoTableViewCell
            aCell.textField.text = "Create new group"
            aCell.textField.isUserInteractionEnabled = false
            cell = aCell
        } else {
            let aCell = tableView.dequeueReusableCell(withIdentifier: "infoTableViewCell") as! InfoTableViewCell
            aCell.textField.text = self.group[indexPath.row].nameOfGroup
            aCell.textField.isUserInteractionEnabled = false
            cell = aCell
        }
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return self.group.count
        }
    }
}

extension MainModuleViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            self.presenter.openCreateNewGroupView()
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
