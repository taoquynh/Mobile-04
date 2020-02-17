//
//  BrickViewController.swift
//  CustomView
//
//  Created by Quynh on 2/15/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class BrickViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        drawO()
    }
    
    func drawO(){
        for i in 0...1{
            for j in 0...1{
                drawBrick(row: i, col: j, radius: 50, color: .red)
            }
        }
    }
    
    // vẽ 1 viên gạch
    func drawBrick(row: Int, col: Int, radius: CGFloat, color: UIColor){
        let d = radius * 2
        let brick = BrickView(startPoint: CGPoint(x: d*CGFloat(col), y: d*CGFloat(row)), radius: radius, color: color)
        view.addSubview(brick)
    }
    

}
