//
//  ViewController.swift
//  controlInAction
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var genderSegment: UISegmentedControl!
    @IBOutlet weak var colorSegment: UISegmentedControl!
    
    
    @IBOutlet weak var sliderFont: UISlider!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fontSlider(_ sender: UISlider) {
        let size = CGFloat(sender.value)
        nameLabel.font = UIFont.systemFont(ofSize: size)
    }
    
    

    @IBAction func colourSegmentChange(_ sender: UISegmentedControl) {
        
        let color : Int = colorSegment.selectedSegmentIndex
        switch color {
        case 0 :
            nameLabel.textColor = .red
        case 1 :
            nameLabel.textColor = .green
        case 2 :
            nameLabel.textColor = .blue
        case 3 :
            nameLabel.textColor = .black
        default:
            nameLabel.textColor = .black
        }
    }
    @IBAction func greetButtonTapped(_ sender: UIButton) {
        let gender = genderSegment.selectedSegmentIndex == 0 ? "Mr" : "Mrs"
        nameLabel.text = "Hello \(gender) \(nameField.text ?? "")"
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        nameLabel.text = ""
    }
    
}

