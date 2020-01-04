//
//  TimChuSoNhoThu2.swift
//  ChuaBaiTapBuoi3.swift
//
//  Created by Taof on 1/4/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation
func timMin2(){
    var mang: [Int] = [2, 4, -6, 3, -3]
    var min1 = mang[0]
    var min2 = mang[0]
    for i in mang{
        if min1 > i {
            min2 = min1
            min2 = i
        }else if min2 > i && i > min1 {
        min2 = i
        }
    }
        print("so nho thu 2 la: \(min2)")
        
}
