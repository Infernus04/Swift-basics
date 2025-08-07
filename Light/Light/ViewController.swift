//
//  ViewController.swift
//  Light
//
//  Created by SDC-USER on 07/08/25.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true

//    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        extractedFunc()
    }

    fileprivate func extractedFunc() {
//        if lightOn {
//            view.backgroundColor = .white
////            lightButton.setTitle("Off", for: .normal)
//        }
//        else{
//            view.backgroundColor = .black
////            lightButton.setTitle("On", for: .normal)
//        }
        view.backgroundColor  = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn.toggle()
        extractedFunc()
    }
    
}

