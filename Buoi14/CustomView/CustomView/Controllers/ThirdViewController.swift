//
//  ThirdViewController.swift
//  CustomView
//
//  Created by Quynh on 2/15/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var view1: CircleView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view1 = CircleView(center: CGPoint(x: view.center.x, y: view.center.y), radius: 30, color: UIColor.red)
        view.addSubview(view1)
    }
    

}
