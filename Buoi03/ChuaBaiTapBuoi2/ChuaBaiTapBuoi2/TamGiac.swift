//
//  TamGiac.swift
//  ChuaBaiTapBuoi2
//
//  Created by Taof on 1/2/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

//Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
//- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
//- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”

// cách làm của anh Huy
func tamGiac(a: Float, b: Float ,c: Float){
    if a + b <= c || a + b == c {
        print("3 canh \(a), \(b), \(c) khong tao thanh 1 tam giac")
    } else{
        if a + c <= b || a + c == b {
            print("3 canh \(a), \(b), \(c) khong tao thanh 1 tam giac")
        } else {
            if b + c <= a || b + c == a {
                print("3 canh \(a), \(b), \(c) khong tao thanh 1 tam giac")
            } else{
                print("3 canh \(a), \(b), \(c) co the tao thanh 1 tam giac")
                let p: Float = Float((a + b + c) / 2)
                let s: Float = Float(sqrt(p * (p - a) * (p - b) * (p - c)))
                print("Dien tich tam giac duoc tao thanh tu 3 canh \(a), \(b), \(c) la: \(s)")
            }
        }
    }
}

// cách2 làm bài tam giác
func tamGiac2(a: Float, b: Float, c: Float){
    if a + b > c && b + c > a && a + c > b {
        let p: Float = Float((a + b + c) / 2)
        let s: Float = Float(sqrt(p * (p - a) * (p - b) * (p - c)))
        print("Dien tich tam giac duoc tao thanh tu 3 canh \(a), \(b), \(c) la: \(s)")
    }else{
        print("3 cạnh \(a), \(b), \(c) không tạo thành một tam giác")
    }
}
