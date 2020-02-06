//
//  DemSoNguyenTo.swift
//  ChuaBaiTapLogic
//
//  Created by Quynh on 2/6/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import Foundation

//Đếm số nguyên tố trong đoạn [a, b]
func demSoNguyenTo(){
    print("Nhập giá trị a trong đoạn [a, b]: ", terminator: "")
    let a: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập giá trị  b trong đoạn [a, b]: ", terminator: "")
    let b: Int = Int(readLine() ?? "0") ?? 0
    print("Số nguyên tố trong đoạn [\(a), \(b)] là: ", terminator: "")
    for i in a...b {
        if isSoNguyenTo(i) == 0 {
            print("\(i) ", terminator: "")
        }
        
    }
}
func isSoNguyenTo(_ a: Int) -> Int {
    var c: Int = 0
    if a > 2 {
        for i in 2...(a - 1) {
            if a % i == 0 {
                c = 1
                break
            }
        }
    } else{
        if a == 2 {
            
        } else {
            c = 1
        }
    }
    return c
}
