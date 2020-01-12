//
//  ViewController.swift
//  FirstProject
//
//  Created by Taof on 1/9/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // đổ màu background
        myView.backgroundColor = UIColor.yellow
        
        // set toạ độ và kích thước
        myView.frame = CGRect(x: 80, y: 90, width: 300, height: 300)
        myView2.frame = myView.bounds.insetBy(dx: 10, dy: 10)
//        // set cho myView nằm ở tâm của super view (view)
//        // view là superview của class ViewController
//        myView.center = view.center
//
//        myView2.backgroundColor = UIColor.purple
//
//        // bo tròn
//        myView.layer.cornerRadius = 20
//
//        // in ra toạ độ tâm của myView
//        print(myView.center)
//        myView2.frame = CGRect(x: myView.frame.size.width/2, y: myView.frame.size.height/2, width: 200, height: 200)
//
//
//        // màu đổ bóng
//        myView.layer.shadowColor = UIColor.red.cgColor
//        // độ trong suốt đổ bóng
//        myView.layer.shadowOpacity = 1
//        // khu vực đổ bóng, = .zezo đổ bóng cân UIView
////        myView.layer.shadowOffset = CGSize.zero
//        myView.layer.shadowOffset = CGSize(width: -20, height: -10)
//        // bo tròn phần đổ bóng
//        myView.layer.shadowRadius = 10
    }

    func configProperties(){
        // độ mờ
        myView.alpha = 0.7
        
        
        // bo thành hình tròn
        myView.layer.cornerRadius = 100 // nếu để cornerRadius là số thì khi width thay đổi, chỗ này cũng phải thay đổi
        
        myView.layer.cornerRadius = myView.frame.size.width / 2 // công thức bo tròn, là radius bằng nửa width của đối tượng đó (đối tượng phải là hình vuông mới có thể bo thành hình tròn)
        
        
        // clipToBounds = true: ẩn phần hiển thị con vượt ra khỏi vùng hiển thị của cha
        myView.clipsToBounds = true
    }

}

