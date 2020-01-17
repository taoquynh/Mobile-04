//
//  ViewController.swift
//  BMI
//
//  Created by Taof on 1/16/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

enum State {
    case none
    case reset
}

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var state: State = .none
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set cho các đối tượng liên quan tới chiều cao
        heightLabel.text = "Chiều cao (cm):"
        heightLabel.font = UIFont.boldSystemFont(ofSize: 18)
        heightTextField.placeholder = "Nhập ở đây"
        
        // set cho các đối tượng liên quan tới cân nặng
        weightLabel.text = "Cân nặng cơ thể (kg):"
        weightLabel.font = UIFont.boldSystemFont(ofSize: 18)
        weightTextField.placeholder = "Nhập ở đây"
        
        // set cho nút button
        resultButton.setTitle("Xem kết quả", for: .normal)
        resultButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        
        // set label kết quả
        resultLabel.textColor = UIColor.red
        resultLabel.font = UIFont.italicSystemFont(ofSize: 22)
        resultLabel.isHidden = true
        
        // mặc định trạng thái state là .none
        state = .none
        
        // tap super view
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapWhenHideKeyboard))
        view.addGestureRecognizer(gesture)
    }
    
    // @objc là dấu hiệu sự kế thừa từ objective-C
    @objc func tapWhenHideKeyboard(){
        // ẩn (tụt) bàn phím
        self.view.endEditing(true)
    }
    
    @IBAction func onPress(_ sender: Any) {
        guard let heightText = heightTextField.text,
            let height = Float(heightText),
            let weightText = weightTextField.text,
            let weight = Float(weightText) else {
                return
        }
        
        if state == .none {
            tinhBMI(chieuCao: height/100, canNang: weight)
            resultLabel.isHidden = false
            resultButton.setTitle("Kiểm tra lại", for: .normal)
            state = .reset
        }else{
            heightTextField.text = ""
            weightTextField.text = ""
            resultLabel.isHidden = true
            resultButton.setTitle("Xem kết quả", for: .normal)
            state = .none
        }
    }
    
    func tinhBMI(chieuCao height: Float, canNang weight: Float){
        let bmi = weight / (height * height)
        
        if bmi > 0 && bmi < 18.5 {
            resultLabel.text = "Thiếu cân"
        } else if bmi < 22.99 {
            resultLabel.text = "Bình Thường"
        } else if bmi < 24.99 {
            resultLabel.text = "Thừa cân"
        } else if bmi < 29.99 {
            resultLabel.text = "Béo phì độ I"
        } else if bmi < 39.99 {
            resultLabel.text = "Béo phì độ II"
        } else {
            resultLabel.text = "Béo phì độ III"
        }
    }
    
}

