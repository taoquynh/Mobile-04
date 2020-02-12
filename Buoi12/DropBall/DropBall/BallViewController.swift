//
//  BallViewController.swift
//  DropBall
//
//  Created by Quynh on 2/11/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class BallViewController: UIViewController {

    // khai báo đối tượng imageView
    var ballImageView: UIImageView!
    
    // khai báo timer
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // khởi tạo đối tượng imageView
        ballImageView = UIImageView(frame: CGRect(x: 0,
                                                  y: 60,
                                                  width: 100,
                                                  height: 100))
        ballImageView.center.x = view.center.x
        // đặt ảnh cho imageView
        ballImageView.image = UIImage(named: "bong")
        ballImageView.contentMode = .scaleAspectFit
        
        // thêm imageView vào superview
        view.addSubview(ballImageView)
        
        // khởi tạo bộ định giờ timer
        timer = Timer.scheduledTimer(timeInterval: 0.009,
                                     target: self,
                                     selector: #selector(runLoop),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func runLoop(){
        ballImageView.frame.origin.y += 1
        
        // kiểm tra để dừng quả bóng
        if ballImageView.frame.origin.y > view.frame.maxY - ballImageView.frame.height{
            // dừng thời gian bộ định giờ
            timer.invalidate()
            
            // khởi lại tạo bộ định giờ timer
            timer = Timer.scheduledTimer(timeInterval: 0.009,
                                         target: self,
                                         selector: #selector(runTimer),
                                         userInfo: nil,
                                         repeats: true)
        }
    }
    
    @objc func runTimer(){
        ballImageView.frame.origin.y -= 1
        if ballImageView.frame.origin.y < 60{
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.009,
            target: self,
            selector: #selector(runLoop),
            userInfo: nil,
            repeats: true)
        }
    }

}
