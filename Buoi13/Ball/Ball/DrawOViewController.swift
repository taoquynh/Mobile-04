//
//  DrawOViewController.swift
//  Ball
//
//  Created by Quynh on 2/13/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class DrawOViewController: UIViewController {
    
    var ball: UIImageView!
    let radius: CGFloat = 50.0
    
    var bienX: CGFloat = 0
    var bienY: CGFloat = 0
    var timer = Timer()
    var diNgang = false
    var diDoc = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        ball = UIImageView(frame: CGRect(x: 0, y: 0, width: radius, height: radius))
        ball.image = UIImage(named: "bong")
        ball.contentMode = .scaleAspectFit
        view.addSubview(ball)
        
        bienX = self.ball.frame.origin.x
        bienY = self.ball.frame.origin.y
        
        runTimer()
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self,   selector: (#selector(runningFunction)), userInfo: nil, repeats: true)
    }
    
    @objc func runningFunction(){
        ball.transform = ball.transform.concatenating(CGAffineTransform(rotationAngle: -CGFloat.pi/2))
        // Nếu vị trí hiện tại nhỏ hơn max
        if bienX < (self.view.bounds.width - radius) && diNgang == false {
            setX(x: bienX)
            bienX = bienX + 5
        } else { // x = max rồi thì di chuyển y neu y < max
            if bienY<(self.view.bounds.height - radius) && diDoc == false {
                setY(y:bienY)
                bienY = bienY + 5
            } else {// y = max rồi giảm x -> 0
                diDoc = true
                if bienX > 0 {
                    diNgang = true
                    setX(x: bienX)
                    bienX = bienX - 5
                } else {
                    if bienY > 0 {
                        setY(y: bienY)
                        bienY = bienY - 5
                    } else {
                        diNgang = false
                        diDoc = false
                    }
                }
            }
        }
    }
    
    func setX(x: CGFloat) {
        self.ball.frame.origin.x = x
    }
    
    func setY(y: CGFloat) {
        self.ball.frame.origin.y = y
    }
}
