//
//  VeHinh.swift
//  BaiTapTetMobile04
//
//  Created by Taof on 2/3/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

//*
//**
//***
//****
//*****
//*****
//****
//***
//**
//*
func hinh1(){
    print("Nhập vào chiều cao h: ")
    let h = Int(readLine()!)!
    
    for i in 0...h{
        if i < h/2{
            for _ in 0...i{
                print("*", terminator: "")
            }
            print()
        }
        
        if i > h/2{
            for _ in i...h{
                print("*", terminator: "")
            }
            print()
        }
    }
}

//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *
func hinh2(){
    print("Nhập vào số h (h lẻ và h > 3): ")
    let h = Int(readLine()!)!
    if h%2 == 0 || h < 3{
        hinh2()
        return
    }
    let n = h/2+1
    var range = 0
    for i in 1...h{
        for j in 1...h{
            if j >= n - range && j <= n + range{
                print("*", terminator: "")
            }else{
                print(" ", terminator: "")
            }
            
        }
        if i >= n {
            range -= 1
        }else{
            range += 1
        }
        print()
    }
}
