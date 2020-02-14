//
//  ViewController.swift
//  DrawBrick
//
//  Created by Quynh on 2/13/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let brickView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.brown
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brickView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        brickView.center = view.center
        view.addSubview(brickView)
        drawLayer()
    }

    func drawLayer(){
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.3
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        
        brickView.layer.addSublayer(shapeLayer)
    }

}

