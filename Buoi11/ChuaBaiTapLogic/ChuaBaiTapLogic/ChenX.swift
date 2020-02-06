//
//  ChenX.swift
//  ChuaBaiTapLogic
//
//  Created by Quynh on 2/6/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import Foundation

//Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
func chenX(_ input: [Int]) {
    print("Nhập số cần chèn:")
    let x = Int(readLine()!)!
    let array = input.sorted()
    let smallerThanX = array.filter {$0 <= x}
    let greaterThanX = array.filter {$0 > x}
    print(smallerThanX + [x] + greaterThanX)
    chenX(array)
}

