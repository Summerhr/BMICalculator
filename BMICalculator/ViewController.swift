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
        heightTextField.becomeFirstResponder()
        heightTextField.keyboardType = .numberPad
        weightTextField.keyboardType = .numberPad
    }
    
    
    // textField에 숫자만 입력가능
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if Double(string) != nil || string == "" {
            return true
        }
        return false
        
    }
    
    
    // 1번 textField에 입력하고 리턴 시 다음칸으로 커서 이동
    // 2번 textField에 입력하고 리턴 시 키보드 내려가게
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
    
    
    // 2개의 textField 중 하나라도 입력되지 않았을 경우 경고창 팝업
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if heightTextField.text == "" || weightTextField.text == "" {
            let alert = UIAlertController(title: "경고", message: "키와 몸무게를 모두 입력해주세요.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
        }
        return true
        
    }
    

    // 화면 빈 곳 클릭 시 키보드 내려가게
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mySegue" {
            let nextVC = segue.destination as! SecondViewController
            nextVC.height = Double(heightTextField.text!)! / 100.0
            nextVC.weight = Double(weightTextField.text!)
        }
        
    }

}


