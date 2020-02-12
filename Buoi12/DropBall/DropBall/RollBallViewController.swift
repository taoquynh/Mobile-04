//
//  RollBallViewController.swift
//  DropBall
//
//  Created by Quynh on 2/11/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class RollBallViewController: UIViewController {
    
    // khai báo đối tượng imageView
    var ballImageView: UIImageView!
    var timer: Timer!
    
    // góc quay
    var alpha: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // khởi tạo đối tượng imageView
        ballImageView = UIImageView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 80,
                                                  height: 80))
        // đặt ảnh cho imageView
        ballImageView.image = UIImage(named: "bong")
        ballImageView.contentMode = .scaleAspectFit
        
        // thêm imageView vào superview
        view.addSubview(ballImageView)
        
        // khởi tạo bộ định giờ timer
        timer = Timer.scheduledTimer(timeInterval: 0.1,
                                     target: self,
                                     selector: #selector(runLoop),
                                     userInfo: nil,
                                     repeats: true)
        
        
    }
    
    @objc func runLoop(){
        // quay quanh tâm
        ballImageView.transform = ballImageView.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/2))
        ballImageView.frame.origin.y += 5

        // kiểm tra để dừng quả bóng
        if ballImageView.frame.origin.y > view.frame.maxY - ballImageView.frame.height{
            // dừng thời gian bộ định giờ
            timer.invalidate()
        }
    }
    
}
