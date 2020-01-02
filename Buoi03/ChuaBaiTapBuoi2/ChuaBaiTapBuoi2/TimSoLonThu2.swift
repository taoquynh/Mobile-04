//
//  File.swift
//  ChuaBaiTapBuoi2
//
//  Created by Taof on 1/2/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import Foundation
// cách 1 bài của anh Đoàn
// logic: tìm số lớn nhất trong mảng, xoá đi số lớn nhất. Sau đó tìm số lớn nhất trong các số còn lại
func bai5(){
    var mang:[Int] = [1,3,4,6,5,2,7]
    var index:Int = 0
    var max:Int = 0
    var max2:Int = 0
    for i in mang {
        if max < i {
            max = i
        }
        index += 1
    }
//    mang[index-1] = 0 // phải xoá phần tử , nếu gán lại bằng 0 thì không đúng trong trường hợp mảng toàn số âm thì sẽ tìm ra số lớn thứ 2 là 0
    mang.remove(at: index-1)
    print(mang)
    for i in mang{
        
        if max2 < i {
            max2 = i
        }
    }
    
    print(" Số lớn thứ 2 trong mảng này là \(max2)")
}

// cách 2
// logic: tạo ra 2 biến max1, max
// nếu số lớn nhất không còn là số lớn nhất thì gán số lớn thứ 2 bằng số thứ nhất, số thứ nhất sẽ cập nhật giá trị mới
func timSoLonThu2(){
    let mang:[Int] = [1,3,9,6,5]
    
    var max1 = mang[0]
    var max2 = mang[0]
    
    for item in mang[1...] {
        if max1 < item {
            max2 = max1
            max1 = item
        }else if max2 < item && item < max1{
            max2 = item
        }
        print(max1, max2)
    }
    print("Số lớn thứ 2 là \(max2)")
}

// BTVN: Tìm số bé thứ 2 trong mảng
// cách 3: Sắp xếp mảng theo chiều lớn nhất (hoặc bé nhất) để tìm số lớn thứ 2, lưu ý các trường hợp các số trùng nhau
