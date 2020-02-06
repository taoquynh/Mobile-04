//
//  soAmstrong.swift
//  BaiTapTetMobile04
//
//  Created by Taof on 2/3/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

func soAmstrong(){
    print("Hãy nhập vào số tự nhiên nhỏ hơn 1000:")
    let n = readLine()!
    
    if Int(n)! >= 1000 || Int(n)! <= 0{
        soAmstrong()
        return
    }
    
    let arr = Array(n)
    var numbers = [Float]()
    
    numbers = arr.map { (i: Character) -> (Float) in
        Float(String(i))!
    }
    
    var tongArm: Float = 0
    for i in numbers{
        tongArm += powf(i, Float(numbers.count))
    }
    
    if Float(n)! == tongArm {
        print("\(n) là số Armstrong")
    }else{
        print("\(n) không phải là số Armstrong")
    }
    
    soAmstrong()
}
