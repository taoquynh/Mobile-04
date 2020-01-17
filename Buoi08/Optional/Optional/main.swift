//
//  main.swift
//  Optional
//
//  Created by Taof on 1/16/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation

var age: Int?
age = 5
//print(age!)

if age != nil {
    print(age!)
}else {
    print("age nil")
}



// 2 cách để kiểm nil và unwrap
// cách 1:
// sử dụgn guard let

//guard let age = age else {
//    print("age nil")
//    fatalError()
//}

print("Tôi năm nay \(age ?? 0) tuổi")

// cách 2:
// sử dụng if let
if let b = age {
    print(b)
}else {
    print("age nil")
}
