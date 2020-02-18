//
//  ViewController.swift
//  Chess
//
//  Created by Quynh on 2/18/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let n: Int = 8 // n là số ô bàn cờ trên 1 hàng, n = 8 nghĩa là bàn cờ 8x8
    let containerView = UIView()
    var screenWidth: CGFloat = 0 // chiều rộng của màn hình
    var squareWidth: CGFloat = 0 // chiều rộng của 1 ô vuông
    let margin: CGFloat = 30
    var countTag: Int = 0
    var images = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupControl()
    }
    
    func setupControl(){
        screenWidth = view.bounds.width
        squareWidth = (screenWidth - 2*margin)/CGFloat(n)
    
        containerView.frame.size = CGSize(width: screenWidth, height: screenWidth)
        containerView.center = view.center
        containerView.backgroundColor = UIColor.lightGray
        view.addSubview(containerView)
        
        for i in 0..<n{
            for j in 0..<n{
                countTag += 1
                let isWhiteSquare: Bool = (i+j)%2 == 1 ? true : false
                drawSquare(row: i, column: j, isWhite: isWhiteSquare, width: squareWidth, tag: countTag)
            }
        }
    }
    
    func drawSquare(row: Int, column: Int, isWhite: Bool, width: CGFloat, tag: Int){
        let squareView = UIView(frame: CGRect(x: margin + CGFloat(column)*width,
                                          y: margin + CGFloat(row)*width,
                                          width: width,
                                          height: width))
        squareView.backgroundColor = isWhite ? UIColor.white : UIColor.black
        squareView.tag = tag
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapSquare(_:)))
        squareView.addGestureRecognizer(gesture)
        containerView.addSubview(squareView)
    }
    
    @objc func tapSquare(_ sender: UITapGestureRecognizer){
        guard let squareView = sender.view else {
            return
        }
        for image in images{
            image.removeFromSuperview()
        }
        if squareView.tag % n == 0 {
            UIView.animate(withDuration: 1) {
                self.placeQueen(isPut: true, row: squareView.tag/self.n-1, column: (self.n-1))
            }
        }else{
            UIView.animate(withDuration: 1) {
                self.placeQueen(isPut: true, row: squareView.tag/self.n, column: squareView.tag%self.n-1)
            }
        }
    }
    
    func placeQueen(isPut: Bool, row: Int, column: Int){
        let queenImageView = UIImageView(image: UIImage(named: "queen"))
        if isPut {
            queenImageView.frame = CGRect(x: margin + CGFloat(column)*squareWidth,
                                          y: margin + CGFloat(row)*squareWidth,
                                          width: squareWidth,
                                          height: squareWidth)
            queenImageView.contentMode = .scaleAspectFit
            images.append(queenImageView)
            containerView.addSubview(queenImageView)
        }
    }
}

