//
//  TimChuSO.swift
//  ChuaBaiTapBuoi3.swift
//
//  Created by Taof on 1/4/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

func timChuSo(){
    print("Nhập vào số tự nhiên bất kỳ")
    var n = Int(readLine()!) ?? 0
    
    var numbers = [Int]()
    var x = 0
    var newArray = [Int]()
    while n > 0 {
        x = n%10
        n = n/10
        numbers.insert(x, at: 0)
    }
    
    newArray = Array(Set(numbers))
    newArray.sort()
    newArray.reverse()
    
    if newArray.count == 1 {
        print("Chữ số duy nhất là \(newArray[0])")
    }else{
        print("Chữ số lớn thứ 2 là \(newArray[1])")
    }
}
