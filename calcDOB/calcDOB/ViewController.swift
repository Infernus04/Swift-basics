//
//  ViewController.swift
//  calcDOB
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputArea: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calcButton(_ sender: Any) {
        let number = Int(inputArea.text ?? "") ?? 0
        let date = Date()
        let current = dateTimeFormat(from: date)
        let age = current.year - number
        resultArea.text = "You're \(age)years old ."
    }
    
    @IBOutlet weak var resultArea: UILabel!
    
    func dateTimeFormat(from date : Date)->(year : Int, month : Int, day : Int , hour : Int, minute : Int , second : Int){
        let calender = Calendar.current
        let components = calender.dateComponents([.year , .month, .day, .hour, .minute, .second], from: date)
        return (
            components.year ?? 0,
            components.month ?? 0,
            components.day ?? 0,
            components.hour ?? 0,
            components.minute ?? 0,
            components.second ?? 0
        )
    }
}

