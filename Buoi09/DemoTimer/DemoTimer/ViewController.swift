//
//  ViewController.swift
//  DemoTimer
//
//  Created by Taof on 1/18/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // khai báo 1 biến kiểu dữ liệu Timer
    // một timer giúp chúng ta thực hiện một vài công việc sau mỗi khoảng thời gian nhất định
    var timer: Timer!
    var dem: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // khởi tạo timer
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(runTimer),
                                     userInfo: nil,
                                     repeats: true)
        // nếu để repeats là true thì sau mỗi timeInterval giây - hàm runTimer() sẽ được gọi 1 lần
    }

    // khai báo 1 hàm kế thừa objective-C
    @objc func runTimer(){
        dem += 1
        print(dem)
    }
}

