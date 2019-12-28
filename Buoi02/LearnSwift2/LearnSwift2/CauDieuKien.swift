//
//  CauDieuKien.swift
//  LearnSwift2
//
//  Created by Taof on 12/28/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import Foundation

func max2So(_ a: Int,_ b: Int) -> Int{
    if a>b{
        return a
    }else{
        return b
    }
}

// tìm số lớn nhất của 3 số cho trước
func timSoLonNhatCua3So(a: Int, b: Int, c: Int){
    // cách 1
    if a > b && a > c{
        print("max là \(a)")
    }else if b > c{
        print("max là \(b)")
    }else{
        print("max là \(c)")
    }
    
    // cách 2
    var max = a
    if a < b {
        max = b
    }
    
    if b < c {
        max = c
    }
    
    print(max)
    
    // cách 3
    print("\(max2So(max2So(a, b), c))")
}
