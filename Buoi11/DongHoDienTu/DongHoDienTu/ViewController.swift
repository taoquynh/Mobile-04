//
//  ViewController.swift
//  DongHoDienTu
//
//  Created by Quynh on 2/6/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockLabel: UILabel!
    let currentDate = NSDate()
    let calendar = NSCalendar.current
    var timer: Timer!
    var tongGiay: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(calendar)
        // lấy ra thời gian thực
        let hour = calendar.component(.hour, from: currentDate as Date)
        let minute = calendar.component(.minute, from: currentDate as Date)
        let second = calendar.component(.second, from: currentDate as Date)
        tongGiay = hour*3600 + minute*60 + second
        
        clockLabel.text = stringFromNumberSecond(tongGiay)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }
    
    @objc func runTimer(){
        if tongGiay >= 23*3600 + 59*60 + 59 {
            tongGiay = 0
        }

        tongGiay += 1
        clockLabel.text = stringFromNumberSecond(tongGiay)
    }
    
    func stringFromNumberSecond(_ numberSecond: Int) -> String{
        let gio = numberSecond/3600
        let phut = (numberSecond%3600)/60
        let giay = (numberSecond%3600)%60
        
        return "\(gio < 10 ? "0\(gio)" : "\(gio)"):\(phut < 10 ? "0\(phut)" : "\(phut)"):\(giay < 10 ? "0\(giay)" : "\(giay)")"
    }
}

