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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func backTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    

}
