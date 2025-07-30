//
//  ViewController.swift
//  tableCalculation
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputArea: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcButton(_ sender: Any) {
        let number = Int(inputArea.text ?? "0") ?? 0
        var string1 = ""

        for i in 1...10 {
            string1 += "\(number) x \(i) = \(number * i)\n"
        }
        resultLabel.text = string1
    }
}
