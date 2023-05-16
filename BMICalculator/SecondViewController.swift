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
        setupData()
    }
    
    
    func setupUI() {
        backButton.layer.cornerRadius = 8
    }
    
    func setupData() {
        let bmiData: Double = weight! / (height! * height!)
        var bmiPrint = round(bmiData*100)/100
        bmiLabel.text = "\(bmiPrint)"
        
        
        switch bmiPrint {
        case ..<18.5:
            bmiLabel.backgroundColor = .yellow
            resultLabel.text = "저체중"
        case 18.5..<23:
            bmiLabel.backgroundColor = .green
            resultLabel.text = "정상"
        case 23..<25:
            bmiLabel.backgroundColor = .orange
            resultLabel.text = "과체중"
        default:
            bmiLabel.backgroundColor = .red
            resultLabel.text = "비만"
        }
    }
    
    
    
    @IBAction func backTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    

}
