//
//  ViewController.swift
//  oddEven
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputArea: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkButton(_ sender: Any) {
        let number = Int(inputArea.text!) ?? 0
        if number % 2 == 0 {
            resultLabel.text = resultLabel.text! + "Even"
        } else {
            resultLabel.text = resultLabel.text! + "Odd"
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
}

