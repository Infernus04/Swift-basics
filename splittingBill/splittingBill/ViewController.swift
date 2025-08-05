//
//  ViewController.swift
//  splittingBill
//
//  Created by SDC-USER on 05/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var peopleLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalBillLabel: UILabel!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var peopleStepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "0.00"
        tipAmountLabel.text = "0.00"
        totalBillLabel.text = "0.00"
        splitLabel.text = "0.00"
    }
    
    @IBAction func tipSliderAction(_ sender: UISlider) {
        let value = Int(sender.value)
        tipLabel.text = "\(value)"
        calculateAndDisplayBill()
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        let number = Int(sender.value)
        peopleLabel.text = "\(number)"
        calculateAndDisplayBill()
    }
    
    @IBAction func textFieldValueChanged(_ sender: UITextField) {
        calculateAndDisplayBill()
    }
    func calculateAndDisplayBill() {
        let billAmount = Double(billTextField.text ?? "0") ?? 0
        let tipPercentage = Double(tipSlider.value)
        let numberOfPeople = Int(peopleStepper.value)
        let tipAmount = billAmount * tipPercentage / 100
        let totalBillAmount = billAmount + tipAmount
        let splitAmount = totalBillAmount / Double(numberOfPeople)
        
        tipAmountLabel.text = String(format: "%.2f", tipAmount)
        totalBillLabel.text = String(format : "%.2f", totalBillAmount)
        splitLabel.text = String(format: "%.2f", splitAmount)
    }
    
}

