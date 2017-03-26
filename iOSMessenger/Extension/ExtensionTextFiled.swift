//
//  DatePickerTextFiled.swift
//  iOSMessenger
//
//  Created by Asmins on 16.03.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func setupDatePicker() {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(changeDate(datePicker:)), for: .valueChanged)
        self.inputView = datePicker
    }

    @objc private func changeDate(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        self.text = dateFormatter.string(from: datePicker.date)
    }

    func setupSexPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        self.inputView = pickerView
    }

}

extension UITextField: UIPickerViewDelegate {
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let arrayTitle = ["Male","Female"]
        self.text = arrayTitle[row]
    }
}

extension UITextField: UIPickerViewDataSource {
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let arrayTitle = ["Male","Female"]
        return arrayTitle[row]
    }

    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}
