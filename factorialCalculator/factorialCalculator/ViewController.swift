//
//  ViewController.swift
//  factorialCalculator
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

    @IBAction func factButton(_ sender: Any) {
        let num = Int(inputArea.text ?? "") ?? 0
//        if num < 0{
//            resultLabel.text! = "Please enter a non-negative number"
//        } else if num == 0 {
//            resultLabel.text = "1"
//        }
//        else{
            var result = 1
            for i in 1...num {
                result *= i
            }
            resultLabel.text = "Factorial of \(num) is : \(result)"
//        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
}

