//
//  TinhDoiXung.swift
//  ChuaBaiTapLogic
//
//  Created by Quynh on 2/6/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import Foundation
// cách Toàn
func check( _ chuoi : String){
    var mang : [String] = []
    var mang2 : [String] = []
    for i in chuoi {
        mang.append(String(i ) ?? " ")
    }
    
    for j in chuoi.reversed() {
        mang2.append(String(j) ?? " ")
    }
    
    if mang == mang2 && mang.count == mang2.count {
        print( " chuoi nhap la chuoi doi xung")
    }else{
        print( " chuoi nhap la chuoi ko doi xung")
    }
}

func chuoiDoiXung(){
    print(" nhap chuoi muon kiem tra")
    var Chuoi :String = readLine() ?? " "
    check(Chuoi)
}

// cách 2:
func kiemTraChuoi(){
    print("Nhập chuỗi không dấu: ")
    let str = readLine() ?? ""
    if isDoiXung(str) {
        print("Chuỗi \(str) là đối xứng")
    }else{
        print("Chuỗi \(str) là không đối xứng")
    }
    
    kiemTraChuoi()
}

func isDoiXung(_ str: String) -> Bool{
    var arr: [Character] = []
    for i in str {
        arr.append(i)
    }
    
    for i in 0..<arr.count/2{
        if arr[i] != arr[arr.count-i-1]{
            return false
        }
    }
    return true
}
