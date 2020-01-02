//
//  NamNhuan.swift
//  ChuaBaiTapBuoi2
//
//  Created by Taof on 1/2/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

// Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không
// cách 1 bài của Kiệt
func namNhuan(a:Int){
    if a%4 == 0 && a%100 != 0 || a%400 == 0{
        print("năm nhuận")
    }else{
        print("không phải là năm nhuận")
    }
}

// cách2 viết dài hơn nhưng tường mình hơn
func namNhuan2(a: Int){
    if a%100 == 0 {
        if a%400 == 0 {
            print("\(a) là năm nhuận")
        }else{
            print("\(a) không phải là năm nhuận")
        }
    }else{
        if a%4 == 0 {
            print("\(a) là năm nhuận")
        }else{
            print("\(a) không phải là năm nhuận")
        }
    }
}
