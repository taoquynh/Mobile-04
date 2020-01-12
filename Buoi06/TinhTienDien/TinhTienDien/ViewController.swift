//
//  ViewController.swift
//  TinhTienDien
//
//  Created by Taof on 1/11/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set placeholder cho priceTextField
        priceTextField.placeholder = "Nhập giá điện"
        
        // set keyboardType cho priceTextField
        priceTextField.keyboardType = .decimalPad
        
        // set borderStyle cho textField
        // các loại style: bezel, line, none, roundedRect
        priceTextField.borderStyle = .roundedRect
    }

    @IBAction func onPress(_ sender: Any) {
        
        // lấy dữ liệu người dùng nhập vào
        // đoạn này viết đúng nhưng không được hay
//        let numberText = numberTextField.text ?? ""
//        let priceText = priceTextField.text ?? ""
//        let tong = (Double(numberText) ?? 0.0) * (Double(priceText) ?? 0.0)
        
        // chúng ta lấy lại dữ liệu
        guard let numberText = numberTextField.text, let number = Float(numberText) else { return }
        guard let priceText = priceTextField.text, let price = Float(priceText) else { return }
        
        totalLabel.text = "Tiền điện: \(number * price) VND"
        print(numberText)
        
    }
    
}

