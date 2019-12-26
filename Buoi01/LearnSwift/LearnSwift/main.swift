//
//  main.swift
//  LearnSwift
//
//  Created by Taof on 12/26/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import Foundation

//print("Hello, World!")
//
//// Đây là kí hiệu chú thích: //, //* *//
//// Chú thích dùng để note, ghi chú lại phần code cho rõ ràng hơn
//
//// Khai báo biến sử dụng từ khoá var
//// biến có thể thay đổi được giá trị
//var name: String = "Quỳnh"
//name = "Mắt Biếc"
//print(name)
//
//// Khai báo hằng số sử dụng từ khoá let
//// Hằng số không thể thay đổi giá trị
//let feet: Int = 2
//print(feet)
//
//// MARK: Kiểu dữ liệu
///*
// - String: là kiểu dữ liệu chuỗi (chuỗi là bao gồm một tập hợp các kí tự, 1 câu, 1 đoạn)
// - Int: là kiểu số nguyên (gồm số nguyên âm, số 0, số nguyên dương)
// - Float, Double: là kiểu số thực (số thập phân). Khoảng giá trị của Float nhỏ hơn khoảng giá trị của Double
// - Bool: kiểu dữ liệu đúng sai nhận 2 giá trị true hoặc false
// - Character: kiểu dữ liệu chuỗi (nhưng chuỗi này chỉ bao gồm 1 kí tự)
//*/
//
//var age: Int = 22
//var female: String = "nữ"
//// terminator dùng để ngắt chế độ xuống dòng
//print("Tôi năm nay \(age) tuổi", terminator: "")
//print(".", terminator: " ")
//print("Tôi là \(female)")
//
//
//// MARK: Nhập dữ liệu từ bàn phím
//
//// Hàm readLine() để lấy dữ liệu từ bàn phím
//print("Hãy nhập vào năm sinh: ")
//let myYear = readLine()
//print(myYear) // kết quả: Optional("1997")
//
//print("Hãy nhập vào tên của bạn: ")
//// sử dụng ! để unwrap giá trị của biến myName
//let myName: String = readLine()!
//
//print("Hãy nhập vào tuổi của bạn: ")
//// sử dụng Int(readLine()) để ép kiểu chuỗi (String) thành Int
//// Sử dụng ?? để khi đối tượng trước ?? bị nil, thì sẽ lấy giá trị mặc định nằm sau ??
//let myAge: Int = Int(readLine() ?? "0") ?? 0
//
//print("Xin chào \(myName), bạn \(myAge) tuổi")
//
//print("Hãy nhập vào số a: ")
//let a: Int = Int(readLine() ?? "0") ?? 0
//print("Hãy nhập vào số b: ")
//let b: Int = Int(readLine() ?? "0") ?? 0
//
//print("Tổng \(a) + \(b) = \(a + b)")

tinhTienDien(soDien: 30, giaDien: 1000)
binhPhuong(a: 4)
lapPhuong(a: 3)
