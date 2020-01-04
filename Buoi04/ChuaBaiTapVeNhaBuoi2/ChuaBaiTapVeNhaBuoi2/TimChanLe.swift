//
//  TimChanLe.swift
//  ChuaBaiTapVeNhaBuoi2
//
//  Created by Taof on 1/4/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation
//Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.

func timSo(){
    var mang : [Int] = [2,3,5,6,7,8]
    var mang2 : [Int] = []
    var  mang3 :[Int ] = []
    var sole : Int = 0
    for i in 0...mang.count-1
    {
        if(mang[i] % 2 == 0 ){
            mang2.append(i)
        }else if mang[ i ] % 2 != 0 {
            mang3.append(i)
        }
    }
    
    print("vi tri so le dau tien \(mang3[0])")
    print("vi tri cuoi cung so chan la : \(mang2[mang2.count-1])")
}

// cách 2:
func timSoCach2(){
    let mang : [Int] = [2,3,5,6,7,8]
    
    for i in 0..<mang.count{
        if mang[i] % 2 != 0 {
            print("Vị trí lẻ đầu tiên là \(i)")
            break
        }
    }
    
    for i in (0..<mang.count).reversed(){
        if mang[i] % 2 == 0 {
            print("Vị trí chẵn cuối cùng là: \(i)")
            break
        }
    }
}

func timSoCach3(){
    let numbers : [Int] = [1, 2,3,5,6,7,8]
    // khai báo biến soLe, soChan là kiểu optional
    var soLe: Optional<Int> = nil // có thể viết cách khác: var soLe: Int? = nil
    var soChan: Optional<Int> = nil // có thể viết cách khác: var soChan: Int? = nil
    
    for (index, number) in numbers.enumerated() {
        if soLe == nil && number % 2 != 0 { // nếu số lẻ không có giá trị và number lại không chia hết cho 2 thì soLe được gán bằng index + 1
            // do đề bài tìm vị trí lẻ đầu tiên, nên nếu tìm được thì chuyển sang kiểm tra điều kiện bên dưới
            soLe = index + 1
        } else if number % 2 == 0 { // nếu number là số lẻ thì soChan được gán bằng index + 1
            soChan = index + 1
        }
    }
    if soLe == nil { // nếu soLe == nil tức là k có số lẻ
        print("Mảng không có số lẻ")
    } else {
        print("Số lẻ đầu tiên ở vị trí index: \(soLe! - 1)")
    }
    
    if soChan == nil { // nếu soChan == nil tức là k có số chan
        print("Mảng không có số chẵn")
    } else {
        print("Số chẵn cuối cùng ở vị trí index: \(soChan! - 1)")
    }
}
