//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
//    var actualHeight: String = ""
//    var actualWeight: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateUI()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    
    func updateUI() {
//        actualHeight = String(format: "%.2f", heightSlider.value)
//        heightLabel.text = actualHeight + "m"
//        actualWeight = String(format: "%.0f", weightSlider.value)
//        WeightLabel.text = actualWeight + "Kg"
    }
}

