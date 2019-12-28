//
//  Mang.swift
//  LearnSwift2
//
//  Created by Taof on 12/28/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import Foundation

func mang(){
    // khai báo một mảng số nguyên
    var numbers: [Int] = [0, 1, 2, 11, 16, -3, 48]
    
    // đếm số phần tử trong mảng
    print(numbers.count)
    
    // thêm mới một phần tử vào mảng
    numbers.append(3)
    print(numbers)
    
    // thêm mới nhiều phần tử vào mảng
    numbers.append(contentsOf: [4, 5])
    print(numbers)
    
    // xoá 1 phần tử trong mảng
    numbers.remove(at: 2)
    print(numbers)
    
    // xoá tất cả phần tử của mảng
//    numbers.removeAll()
//    print(numbers)
    
    // thay thế một phần tử trong mảng
    numbers[3] = 10
    print(numbers)
    
    // thay thế một đoạn phần tử trong mảng
    numbers.replaceSubrange(2...5, with: [5,6,7])
    print(numbers)
    
    // duyệt mảng
    for item in numbers {
        print(item)
    }
    
    print("-------")
    // duyệt mảng theo chiều ngược lại (đảo mảng, dùng hàm reversed())
    for item in numbers.reversed(){
        print(item)
    }
    
    
    for i in 0..<numbers.count {
        // đọc phần tử mảng theo index
        print(numbers[i])
    }
    
    //duyệt mảng theo index sử dụng enumerated
    for (index, value) in numbers.enumerated(){
        print("Index là: \(index) - Value là: \(value)")
    }
}

func binhPhuongMang(){
    var arrs: [Int] = [1, 5, 0, 3, 6]
    
    for (i, item) in arrs.enumerated() {
        arrs[i] = item * item
    }
    
    print(arrs)
}

// MARK: Chữa bài tập

func timSoAm(){
    var numbers = [-3, 9, 0, 24, -5, 1]
    
    for (i, item) in numbers.enumerated(){
        if item < 0 {
            numbers[i] = 0
        }
    }
    
    print(numbers)
}

func timMinMax(){
    let numbers = [-3, 9, 0, 24, -5, 1]
    var min = 0
    var max = 0
    
    for item in numbers {
        // tìm min
        if min > item {
            min = item
        }
        
        if max < item {
            max = item
        }
    }
    
    print(min, max)
}
