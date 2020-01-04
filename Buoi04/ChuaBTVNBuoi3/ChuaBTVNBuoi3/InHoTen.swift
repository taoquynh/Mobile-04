//
//  InHoTen.swift
//  ChuaBaiTapBuoi3.swift
//
//  Created by Taof on 1/4/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

func inHoTen(){
    print("Nhập vào họ và tên (không dấu)")
    let hoten = readLine() ?? ""
    
    let ho_tens = hoten.components(separatedBy: " ")
    
    if ho_tens.count == 1 {
        print(ho_tens[0])
    }else if ho_tens.count == 2 {
        print("\(ho_tens[0]) \(ho_tens[1])")
    }else{
        print("\(ho_tens.first!) \(ho_tens.last!)")
    }
}
