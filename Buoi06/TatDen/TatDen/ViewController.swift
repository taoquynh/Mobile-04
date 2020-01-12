//
//  ViewController.swift
//  TatDen
//
//  Created by Taof on 1/11/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    // khai báo biến để kiểm tra trạng thái đèn đang được bật, hay tắt
    // true là đang bật, false là đang tắt
    var isTurnOn: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // đổ màu background
        view.backgroundColor = .black
        
        // set kích thước, toạ độ cho bóng đèn
        bulbImageView.frame = CGRect(x: 0,
                                     y: 0,
                                     width: view.frame.size.width,
                                     height: view.frame.size.height/4 * 3)
        
        // xác định toạ độ cho button
        button.center.x = view.center.x
        // origin là giữa
        // maxY của frame tương đương với chiều cao của đối tượng đó
        // nghĩa là: view.frame.maxY = view.frame.size.height
        button.frame.origin.y = view.frame.maxY - 200
        
        // set biến kiểm tra ban đầu là true
        isTurnOn = false
        configBulb(isTurnOn)
    }

    @IBAction func onPress(_ sender: Any) {
        isTurnOn.toggle() // nếu không sử dụng hàm toggle() thì viết như sau: isTurnOn = !isTurnOn
        configBulb(isTurnOn)
    }
    
    func configBulb(_ isBat: Bool){
        if isBat { // nếu đèn đang bật
            // set ảnh mặc định ban đầu
            // thuộc tính image của UIImageView có kiểu là UIImage?
            bulbImageView.image = UIImage(named: "BulbOff")
            
            // set tên của nút
            // UIControl.State.normal có thể viết tắt là .normal
            // UIControl.State chỉ trạng thái của button
            // Các trạng thái của button thường gặp là normal (bình thường), highlighted, selected, disable
            button.setTitle("Bật đèn", for: .normal)
            
        }else{ // nếu đèn đang tắt
            bulbImageView.image = UIImage(named: "BulbOn")
            button.setTitle("Tắt đèn", for: .normal)
        }
    }
}

