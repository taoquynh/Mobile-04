//
//  ViewController.swift
//  IAmRich
//
//  Created by Taof on 1/9/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rubyImageView: UIImageView!
    
    @IBOutlet weak var amRichLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set cho rubyImageView nằm ở giữa màn hình và kích thước bằng với kích thước super view
        rubyImageView.center = view.center
        rubyImageView.frame.size = CGSize(width: view.frame.size.width,
                                          height: view.frame.size.height)
        
//        amRichLabel.center.x = rubyImageView.center.x
//        amRichLabel.center.y = rubyImageView.center.y + 200
        
        // dòng code này viết gọn của 2 dòng code trên
        amRichLabel.center = CGPoint(x: rubyImageView.center.x,
                                     y: rubyImageView.center.y + 500)
        
        rubyImageView.alpha = 0
        
        UIView.animate(withDuration: 2) {
            self.rubyImageView.alpha = 1
            
            self.amRichLabel.center.y = self.rubyImageView.center.y + 200
        }
    }


}

