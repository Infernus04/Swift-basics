//
//  ViewController.swift
//  RGBViewer
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    var red : CGFloat = 0
    var green : CGFloat = 0
    var blue : CGFloat = 0

    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        red = CGFloat(redSlider.value)
        green = CGFloat((greenSlider.value))
        blue = CGFloat((blueSlider.value))
        
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func redSwitch(_ sender: UISwitch) {
        redSlider.isEnabled = sender.isOn
        if sender.isOn == false{
            redSlider.value = 0
        }
    }
    
    @IBAction func greenSwitch(_ sender: UISwitch) {
        greenSlider.isEnabled = sender.isOn
        if sender.isOn == false{
            greenSlider.value = 0
        }
    }
    @IBAction func blueSwitch(_ sender: UISwitch) {
        blueSlider.isEnabled = sender.isOn
        if sender.isOn == false{
            blueSlider.value = 0
        }
    }
    
}

