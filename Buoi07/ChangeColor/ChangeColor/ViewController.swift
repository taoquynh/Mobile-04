//
//  ViewController.swift
//  ChangeColor
//
//  Created by Taof on 1/13/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var reloadButton: UIButton!
    let colors: [UIColor] = [.blue, .purple, .cyan, .green, .yellow, .red]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set image cho UIButton
        reloadButton.setImage(UIImage(named: "ic_reload"), for: .normal)
        randomColor()
    }
    
    @IBAction func changeColor(_ sender: Any) {
        randomColor()
    }
    
    func randomColor(){
        // cách 1, chỉ random phần tử từ mảng
        // random từ một mảng, gọi hàm randomElement()
        //        let random = colors.randomElement()
//        view.backgroundColor = random
        
        // cách 2, tạo một mảng màu mới, trừ đi màu hiện tại (dùng phép lọc: filter)
        let newColors = colors.filter { $0 != view.backgroundColor }
        print(colors.count)
        print(newColors.count)
        view.backgroundColor = newColors.randomElement()
    }
}

