//
//  VongLap.swift
//  LearnSwift2
//
//  Created by Taof on 12/28/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import Foundation

func vongLapFor(){
    for i in 0...10{
        print(i+1)
    }
    
    for i in 0..<10{
        print(i)
    }
    
    for i in 0..<10{
        print(i)
    }
}

func vongLapWhile(){
    var i = 10
    while i > 0 {
        i -= 1 // đồng nghĩa với biểu thức i = i - 1
        print(i)
    }
}

func vongLapRepeatWhile(){
    var i = 0
    repeat {
        print(i)
        i += 1
    } while i < 10
}
