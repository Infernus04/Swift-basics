//
//  ViewController.swift
//  stopWatch
//
//  Created by SDC-USER on 05/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    var timer : Timer?
    var totalSecond : Int = 0
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        minuteLabel.text = "00"
        secondLabel.text = "00"
    }
    @objc func updateTimer(){
        totalSecond += 1
        updateLabels()
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
        
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        stopButton(sender)
        totalSecond = 0
        updateLabels()
    }
    
    func updateLabels(){
        let minute : Int = totalSecond / 60
        let second : Int = totalSecond % 60
        minuteLabel.text = String(format: "%02d", minute)
        secondLabel.text = String(format: "%02d", second)
    }
    

}

