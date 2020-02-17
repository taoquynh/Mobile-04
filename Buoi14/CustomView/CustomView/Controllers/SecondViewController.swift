//
//  SecondViewController.swift
//  CustomView
//
//  Created by Quynh on 2/15/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // khởi tạo view1, view2, view3 là kiểu ColorView, khi này có thể đặt màu cho view ngay khi khởi tạo
    let view1 = ColorView(color: .blue)
    let view2 = ColorView(color: .red)
    let view3 = ColorView(color: .yellow)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        view1.frame = CGRect(x: 0, y: 100, width: 300, height: 100)
        view2.frame = CGRect(x: 0, y: 250, width: 300, height: 100)
        view3.frame = CGRect(x: 0, y: 400, width: 300, height: 100)
        
        view1.center.x = view.center.x
        view2.center.x = view.center.x
        view3.center.x = view.center.x
        
    }
    


}
