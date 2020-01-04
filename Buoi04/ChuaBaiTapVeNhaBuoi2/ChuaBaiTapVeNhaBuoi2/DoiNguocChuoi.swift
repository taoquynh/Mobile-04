//
//  DoiNguocChuoi.swift
//  ChuaBaiTapVeNhaBuoi2
//
//  Created by Taof on 1/4/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

// cách 1: sử dụng hàm revered()
func daoChuoi(){
    print("Hãy nhập vào chuỗi bất kỳ (không dấu")
    let chuoi = readLine()!
    
    print(String(chuoi.reversed()))
}

// cách 2:
func daoChuoi2(){
    print("Hãy nhập vào chuỗi bất kỳ (không dấu):")
    let chuoi = readLine()!
    
    var result: String = ""
    for i in chuoi {
        var s = String(i)
        let lower = s.lowercased()
        let upper = s.uppercased()
        if s == lower {
            s = upper
        }else{
            s = lower
        }
        result = s + result
        
        // cách viến gọn của đoạn if trên
//        result = ((s == lower) ? upper : lower) + result
    }
    
    print(result)
}
