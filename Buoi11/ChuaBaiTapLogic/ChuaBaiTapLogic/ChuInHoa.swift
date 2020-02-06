//
//  ChuInHoa.swift
//  ChuaBaiTapLogic
//
//  Created by Quynh on 2/6/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import Foundation

func Upercase(){
    print(" nhap ho ten cua ban")
    let  hoten = readLine() ?? " "
    let hoTen = hoten.components(separatedBy: " ")
    if hoTen.count == 1{
        print(hoTen[0].capitalized)
    }else if hoTen.count == 2{
        print(hoTen[0].capitalized + hoTen[1].capitalized )
    }else{
        for i in 0...hoTen.count-1{
            print(hoTen[i].capitalized ,terminator : " ")
        }
    }
    
}
