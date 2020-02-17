//
//  ColorView.swift
//  CustomView
//
//  Created by Quynh on 2/15/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ColorView: UIView {

    // sử dụng keyword convenience trước init để bên trong hàm init này có thể gọi đến một hàm init khác
    convenience init(color: UIColor) {
        self.init(frame: .zero)
        self.backgroundColor = color
    }
}
