//
//  ViewController.swift
//  LearningXcode
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var greetLabel: UILabel!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
     func greetButton(_ sender: Any) {
        greetLabel.text = "Hello " + nameField.text!
    }
    
}

