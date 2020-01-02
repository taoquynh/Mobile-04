//
//  File.swift
//  ChuaBaiTapBuoi2
//
//  Created by Taof on 1/2/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation
//Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)
//    *
//  * * *
//* * * * *

func tamGiacCan(){
    print("Nhập vào chiều cao của tam giác, (chiều cao lớn hơn 1): ")
    let h = Int(readLine()!)!
    
    for i in 0..<h{
        for j in 0..<2*h-1{
            if j >= (h-1-i) && j <= (h-1+i){
                print("*", terminator: " ")
            }else{
                print("-", terminator: " ")
            }
        }
        print()
    }
}

func drawTriangle(){
    print("Nhap chieu cao:")
    let height = Int(readLine()!)!
    if height <= 1 {
        drawTriangle()
    } else {
        for index in 0...(height-1) {
            let stars = Array(repeating: "*", count: 2*index + 1)
            let spaces = Array(repeating: " ", count: height - index - 1)
            let line = spaces + stars + spaces
            print(line.joined())
        }
    }
}
