//
//  ViewController.swift
//  Forms
//
//  Created by Isaac Watt on 2019-02-07.
//  Copyright © 2019 Isaac Watt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var countryPicker: UIPickerView!
    @IBOutlet weak var countryPickerBtn: UIButton!
    
    let countries = ["Canada", "America", "Russia", "Japan", "Australia" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryPicker.dataSource = self
        countryPicker.delegate = self
    }
    
    @IBAction func countryBtnPressed(_ sender: UIButton) {
        countryPicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countryPickerBtn.setTitle(countries[row], for: UIControl.State.normal)
        countryPicker.isHidden = true
    }

}

