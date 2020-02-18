//
//  ViewController.swift
//  DrawBrick
//
//  Created by Quynh on 2/18/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let radius: CGFloat = 100
    var containerView = UIView()
    var width: CGFloat = 0
    var squareWidth: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = self.view.frame.width
        containerView.frame = CGRect(x: 0, y: 0, width: width/2, height: width/2)
        containerView.center = view.center
        containerView.backgroundColor = UIColor.lightGray
        view.addSubview(containerView)
        
        squareWidth = (containerView.bounds.width) / 6
        drawWall()
    }
    
    func drawBrick(row: Int, col: Int, radius: CGFloat, color: UIColor) {
        let d = radius * 2
        let ball = Brick(startPoint: CGPoint(x: d * CGFloat(col), y: d * CGFloat(row)), radius: radius, fillColor: color)
        containerView.addSubview(ball)
    }
    
    func drawWall(){
        for i in 0...2{
            for j in 0...2 {
                drawBrick(row: i, col: j, radius: squareWidth, color: UIColor(red:0.94, green:0.96, blue:0.96, alpha:1.0))
            }
        }
        print(containerView.subviews.count)
    }
    
    func deleteBrickView(){
        if containerView.subviews.count > 9{
            for _ in 9..<containerView.subviews.count{ containerView.subviews[containerView.subviews.count-1].removeFromSuperview()
            }
        }
    }
    
    func drawI(){
        deleteBrickView()
        for i in 0...2{
            for j in 0...2{
                if j == 1{
                    drawBrick(row: i, col: j, radius: squareWidth, color: UIColor.red)
                }
            }
        }
    }
    
    func drawL(){
        deleteBrickView()
        for i in 0...2{
            for j in 0...1{
                if i<2 && j<1{
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                }else if i==2{
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                }
            }
        }
    }
    
    func drawJ(){
        deleteBrickView()
        for i in 0...2{
            for j in 1...2{
                if j == 2{
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                }else if i == 2{
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                    
                }
            }
        }
        
    }
    
    func drawZ(){
        deleteBrickView()
        for i in 0...2{
            for j in 0...2{
                if i == 0 && j<2 || i == 2 && j > 0{
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                }else if i == 1 && j==1   {
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                }
                
            }
        }
    }
    
    func drawZNguoc(){
        deleteBrickView()
        for i in 0...2{
            for j in 0...2{
                if i == 0 && j>0 || i == 2 && j < 2{
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                }else if i == 1 && j==1   {
                    drawBrick(row: i, col: j, radius: squareWidth , color: .red)
                }
            }
        }
    }
    
    @IBAction func onDrawI(_ sender: Any) {
        drawI()
    }
    
    @IBAction func onDrawJ(_ sender: Any) {
        drawJ()
    }
    
    @IBAction func onDrawL(_ sender: Any) {
        drawL()
    }
    
    @IBAction func onDrawZ(_ sender: Any) {
        drawZ()
    }
    
    @IBAction func onDrawZNguoc(_ sender: Any) {
        drawZNguoc()
    }
    
}

