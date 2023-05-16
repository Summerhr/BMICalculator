//
//  SecondViewController.swift
//  BMICalculator
//
//  Created by HAERIN PARK on 2023/05/16.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var height: Double?
    var weight: Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        var bmiData: Double = weight! / (height! * height!)
        var bmiPrint = round(bmiData*100)/100
        bmiLabel.text = "\(bmiPrint)"
        
    }
    
    
    func setupUI() {
        backButton.layer.cornerRadius = 8
    }
    
    
    @IBAction func backTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    

}
