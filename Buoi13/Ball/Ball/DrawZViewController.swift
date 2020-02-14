//
//  DrawOViewController.swift
//  Ball
//
//  Created by Quynh on 2/13/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

enum Direction {
    case right
    case down
    case left
}

class DrawZViewController: UIViewController {

    let ballImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bong")
        return imageView
    }()
    
    var radius: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        ballImageView.frame = CGRect(x: 0, y: 0, width: radius, height: radius)
        ballImageView.contentMode = .scaleAspectFit
        view.addSubview(ballImageView)
        zigzag(direction: .right)
    }
    
    func zigzag(direction: Direction) {
        switch direction {
        case .right:
            // kiểm tra: nếu toạ độ y của quả bóng lớn hơn chiều cao của view (thiết bị) thì gọi đến transform identity, CGAffineTransform.indentity sẽ xoá mọi ràng buộc thay đổi của quả bóng và đặt về mặc định
            if self.ballImageView.frame.origin.y > self.view.frame.size.height  {
                self.ballImageView.transform = CGAffineTransform.identity
            }
            
            // dịch chuyển từ điểm bắt đầu sang phải,
            UIView.animate(withDuration: 2, animations: {
                self.ballImageView.transform = CGAffineTransform(translationX: self.view.frame.size.width - self.ballImageView.frame.width, y: self.ballImageView.frame.origin.y)
            }) { (_) in
                self.zigzag(direction: .down)
            }
            break
        case .down:
            // nếu quả bóng đang đứng bên phải thì dịch bóng từ trên xuống và giữ toạ độ x ở mép bên phải ( = self.view.frame.size.width - self.ballImage.frame.width)
            // nếu quả bóng đang đứng bên trái thì dịch bóng từ trên xuống và giữ toạ độ x ở mép trái ( =0)
            UIView.animate(withDuration: 2, animations: {
                if self.ballImageView.frame.origin.x != 0.0 {
                    self.ballImageView.transform = CGAffineTransform(translationX: self.view.frame.size.width - self.ballImageView.frame.width, y: self.ballImageView.frame.origin.y + self.view.frame.height/5)
                } else {
                    self.ballImageView.transform = CGAffineTransform(translationX: 0, y: self.ballImageView.frame.origin.y + self.view.frame.height/5)
                }
            }) { (_) in
                // nếu quả bóng đang đứng bên trái thì dịch nó sang phải và ngược lại
                if self.ballImageView.frame.origin.x == 0.0 {
                    self.zigzag(direction: .right)
                } else {
                    self.zigzag(direction: .left)
                }
            }
            break
        case .left:
            // dịch chuyển từ phải sang trái
            UIView.animate(withDuration: 2, animations: {
                self.ballImageView.transform = CGAffineTransform(translationX: 0, y: self.ballImageView.frame.origin.y)
            }) { (_) in
                self.zigzag(direction: .down)
            }
            break
        }
    }
}
