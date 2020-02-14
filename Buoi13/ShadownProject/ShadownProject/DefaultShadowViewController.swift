//
//  DefaultShadowViewController.swift
//  ShadownProject
//
//  Created by Quynh on 2/13/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class DefaultShadowViewController: UIViewController {

    // một cách để khởi tạo đối tượng
    // ưu điểm của cách này là thuộc tính của đối tượng được viết tập trung một chỗ, dễ quản lý code hơn
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SwiftUI_feature")
//        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let width: CGFloat = 200
    let height: CGFloat = 200
    let shadowRadius: CGFloat = 5
    let shadowWidth: CGFloat = 1.5
    let shadowHeight: CGFloat = 0.5
    let shadowOffsetX: CGFloat = -50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        imageView.center = view.center
        view.addSubview(imageView)
        
        flatAndLongShadow()
    }
    
    func defalutShadow(){
        // thêm shadown cho imageView
        imageView.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: imageView.frame.width, height: imageView.frame.height)).cgPath
        imageView.layer.shadowOpacity = 0.5
        
        imageView.layer.shadowOffset = CGSize(width: 10, height: 10)
    }
    
    // shadow hình oval
    func ovalShadow(){
        let rect = CGRect(x: 0, y: imageView.frame.height + 10, width: imageView.frame.width, height: 50)
        imageView.layer.shadowPath = UIBezierPath(ovalIn: rect).cgPath
        imageView.layer.shadowOpacity = 0.5
    }

    func depthShadow(){
        
        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: shadowRadius/2, y: height - shadowRadius/2))
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius/2, y: height - shadowRadius/2))
        shadowPath.addLine(to: CGPoint(x: width*shadowWidth, y: height + height*shadowHeight))
        shadowPath.addLine(to: CGPoint(x: width*(shadowWidth/2-1)+shadowOffsetX, y: height + height*shadowHeight))
        
        imageView.layer.shadowPath = shadowPath.cgPath
        imageView.layer.shadowOpacity = 0.5
        imageView.layer.shadowRadius = shadowRadius
        imageView.layer.shadowOffset = .zero
    }
    
    func flatAndLongShadow(){
        let shadowPath = UIBezierPath()
        
        shadowPath.move(to: CGPoint(x: 0, y: height))
        shadowPath.addLine(to: CGPoint(x: width, y : 0))
        shadowPath.addLine(to: CGPoint(x: imageView.frame.width*2, y:imageView.frame.height*1))
        shadowPath.addLine(to: CGPoint(x: imageView.frame.width*2, y:imageView.frame.height*2))
        
        imageView.layer.shadowPath = shadowPath.cgPath
        imageView.layer.shadowOpacity = 0.2
        imageView.layer.shadowRadius = 0
        imageView.layer.shadowOffset = .zero
        
        
    }
}
