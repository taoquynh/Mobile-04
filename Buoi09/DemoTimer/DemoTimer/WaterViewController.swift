//
//  WaterViewController.swift
//  DemoTimer
//
//  Created by Taof on 1/18/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit
import AVFoundation // thư viện của hệ thống, làm việc với âm thanh

class WaterViewController: ViewController {

    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    
    var time: Timer!
    var count: Int = 0
    var n: Int = 0
    
    // khai báo 1 biến kiểu
    var soundPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        time = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(runLoop),
                                     userInfo: nil,
                                     repeats: true)
        
        n = 30
        count = n
        countLabel.text = "\(count)"
        playSound()
    }
    
    @objc func runLoop(){
        count -= 1
        countLabel.text = "\(count)"
        waterView.frame = CGRect(x: 0,
                                 y: waterView.frame.origin.y + view.bounds.height/CGFloat(n) ,
                                 width: view.bounds.width,
                                 height: view.bounds.height)
        
        if count < 1{
            // dừng âm thanh
            soundPlayer?.pause()
            // dừng thời gian
            time.invalidate()
        }
    }

    func playSound(){
        let path = Bundle.main.path(forResource: "bubblewater.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
            // đặt numberOfLoops = -1 để nó chạy lại khi chạy hết
            soundPlayer?.numberOfLoops = -1
        } catch {
            print("lỗi")
            // couldn't load file :(
        }
    }
}
