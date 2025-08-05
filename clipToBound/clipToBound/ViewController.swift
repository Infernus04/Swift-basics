//
//  ViewController.swift
//  clipToBound
//
//  Created by SDC-USER on 01/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let child = UIView(frame: CGRect(x : -100 , y : -100, width: 200, height: 200))
        child.backgroundColor = .red
        uiView.addSubview(child)
    }


    @IBAction func toggleButton(_ sender: UIButton) {
        uiView.clipsToBounds.toggle()
        sender.setTitle(uiView.clipsToBounds ? "Disable" : "Enable", for: .normal)
    }
}

