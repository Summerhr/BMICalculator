//
//  ViewController.swift
//  BMICalculator
//
//  Created by HAERIN PARK on 2023/05/16.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    
    }

    func setupUI () {
        calculateButton.layer.cornerRadius = 8
        view.backgroundColor = .systemGray5
    }
    
    
    

}

