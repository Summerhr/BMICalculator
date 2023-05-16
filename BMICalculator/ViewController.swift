//
//  ViewController.swift
//  BMICalculator
//
//  Created by HAERIN PARK on 2023/05/16.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightTextField.delegate = self
        weightTextField.delegate = self
        setupUI()
    }

    func setupUI () {
        calculateButton.layer.cornerRadius = 8
        view.backgroundColor = .systemGray5
        heightTextField.keyboardType = .numberPad
        calculateButton.backgroundColor = .gray
    }
    
    
    
    // textField에 숫자만 입력가능
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if Int(string) != nil || string == "" {
            return true
        }
        return false
    }
    
    // 1번 textField에 입력이 끝나면 다음칸으로 커서 이동
    // 2번 textField에 입력이 끝나면 키보드 내려가게
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

       if heightTextField.text != "", weightTextField.text != "" {
            heightTextField.resignFirstResponder()
            return true
       } else if heightTextField.text != "" {
            weightTextField.becomeFirstResponder()
            return true
       }
       return false

    }
    
    // 2개의 textField가 모두 입력되었을 경우에만 버튼 클릭 활성화 (색 변경 + 다음화면 이동)
    func calButtonStatus(_ isOn: Bool) {
        switch isOn {
        case true:
            calculateButton.backgroundColor = .link
            calculateButton.isUserInteractionEnabled = true
        case false:
            calculateButton.backgroundColor = .gray
            calculateButton.isUserInteractionEnabled = false
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if heightTextField.text != nil && weightTextField.text != nil {
            calButtonStatus(true)
        } else {
            calButtonStatus(false)
        }
    }
    


    
    

}


