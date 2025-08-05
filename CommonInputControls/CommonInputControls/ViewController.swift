//
//  ViewController.swift
//  CommonInputControls
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {
    var clicks : Int = 0
    @IBOutlet weak var incrementLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func incrementButton(_ sender: Any) {
        clicks += 1
        incrementLabel.text = "\(clicks)"
    }
    @IBAction func switchToggle(_ sender: UISwitch) {
        incrementLabel.text = sender.isOn ? "Switch is on" : "Switch is off"
    }
    @IBAction func sliderValue(_ sender: UISlider) {
        incrementLabel.text = String(format: "%.1f", sender.value)
    }
    @IBAction func textField(_ sender: UITextField) {
        
    }
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
        let dot = UIView(frame: CGRect(x : 0,y : 0, width: 10,height: 10))
        dot.center = location
        dot.backgroundColor = .red
        dot.layer.cornerRadius = 5
        view.addSubview(dot)
    }
    
}

