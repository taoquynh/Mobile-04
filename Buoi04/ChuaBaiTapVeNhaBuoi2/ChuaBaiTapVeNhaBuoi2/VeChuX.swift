//
//  VeChuX.swift
//  ChuaBaiTapVeNhaBuoi2
//
//  Created by Taof on 1/4/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

func drawX(){
    print("Nhập vào chiều cao X: ")
    let h = Int(readLine()!) ?? 0
    
    for i in 0..<h{
        for j in 0..<h{
            if i == j || i+j == h-1{
                print("*", terminator: "")
            }else{
                print(" ", terminator: "")
            }
        }
        print()
    }
}
