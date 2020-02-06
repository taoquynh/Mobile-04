//
//  SapXep.swift
//  BaiTapTetMobile04
//
//  Created by Taof on 2/3/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

// sắp xếp mảng giảm dần, sử dụng hàm sort
func sapXep(){
    var mang: [Int] = [1, 4, 0, 9]
    
    mang.sort()
    for i in mang {
        mang.insert(i, at: 0)
        mang.removeLast()
    }
    
    print(mang)
}
