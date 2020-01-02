//
//  Giaithua.swift
//  ChuaBaiTapBuoi2
//
//  Created by Taof on 1/2/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

//Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).


// tìm số n bé nhất sao cho n! > m cho trước nhập từ bàn phím
func timSoNBeNhat() {
    print("nhập số m")
    let m : Int = Int (readLine() ?? "0") ?? 0
    var n : Int = 0
    var giaiThua : Int = 1
    while giaiThua <= m {
        n = n + 1
        giaiThua = 1
        for i in 1...n {
            giaiThua = giaiThua*i
        }
        print(n, giaiThua)
    }
    print("Số n là: \(n)")
}
