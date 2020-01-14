//
//  ViewController.swift
//  RandomNumber
//
//  Created by Taof on 1/13/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomLabel: UILabel!
    
    var n: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        randomLabel.text = "0"
    }

    @IBAction func onPress(_ sender: Any) {
        randomLabel.text = String(randomGame())
    }
    
    // viết hàm random
    func randomGame() -> Int{
        // Int.random(in: 1...100) là nó sẽ random ra số bất kỳ trong khoảng 1...100
        let m = Int.random(in: 1...3)
        // nếu như số random m bằng số cũ n thì gọi lại hàm random để random ra một số khác
        if n == m {
            randomGame()
        }
        n = m
        return m
    }
    
}

