//
//  DropBallViewController.swift
//  Ball
//
//  Created by Quynh on 2/13/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class DropBallViewController: UIViewController {

    var ballImageView : UIImageView!
    var timer: Timer!
    var yBanDau: CGFloat = 100
    
    // gia tốc ban đầu
    let a: CGFloat = 1.0
    // vận tốc v ban đầu
    var v: CGFloat = 0.0
    // biến y để lưu giá trị toạ độ y thay đổi
    var y: CGFloat = 0.0
    // chiều cao màn hình
    var heighScreen: CGFloat!
    // đường kính quả bóng
    var radius: CGFloat = 80
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // đặt màu background
        view.backgroundColor = .green
        
        // khởi tạo quả bóng
        ballImageView = UIImageView(frame: CGRect(x: 0, y: yBanDau, width: radius, height: radius))
        ballImageView.image = UIImage(named: "bong")
        ballImageView.contentMode = .scaleAspectFit
        ballImageView.center.x = view.center.x
        // thêm quả bóng vào superview
        view.addSubview(ballImageView)
        
        // gán các giá trị cần thiết ban đầu
        y = yBanDau
        heighScreen = view.bounds.height
        
        // khởi tạo timer
        timer = Timer.scheduledTimer(timeInterval: 0.03,
                                     target: self,
                                     selector: #selector(runLoop),
                                     userInfo: nil,
                                     repeats: true)
       
    }
    
    @objc func runLoop(){
        v = v + a
        y = y + v
        // check điều kiện để quả bóng nảy lên
        if y > heighScreen - radius/2 - 20 {
            y = heighScreen - radius/2 - 20
            v = -v * 0.8
        }
        if v == -0.44 {
            timer.invalidate()
        }
        
        ballImageView.center = CGPoint(x: ballImageView.center.x, y: y)
    }

}
