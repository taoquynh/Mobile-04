//
//  ViewController.swift
//  CanhDong
//
//  Created by guntex01 on 1/11/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var canhDongView: UIImageView!
    @IBOutlet weak var ongView: UIImageView!
    
    // lấy kích thước thiết bị
    let widthScreen = UIScreen.main.bounds.width
    let heightScreen = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // một cách khác lấy kích thước thiết bị, là chúng ta sẽ lấy kích thước của super view
        let widthSuperView = self.view.frame.size.width
        let heightSuperView = self.view.frame.size.height
        
        // set kích thước của cánh đồng
        canhDongView.frame = CGRect(x: 0, y: 0, width: widthScreen, height: heightScreen)
//
//        ongView.backgroundColor = .red
//        ongView.contentMode = .scaleToFill
        // set vị trị ban đầu của con ong
        ongView.frame = CGRect(x: -100, y: heightScreen/4 * 3, width: 100, height: 100)
            
        // hàm để con ong chuyển động
        UIView.animate(withDuration: 2) {
            // thay đổi toạ độ tâm của con ong
            // tương đương với biểu thức
            // self.ongView.center.x = self.ongView.center.x + self.widthScreen
            self.ongView.center.x += self.widthScreen
        }
        
    }
    
    
}

