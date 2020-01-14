//
//  ViewController.swift
//  BaiTapDem
//
//  Created by Taof on 1/13/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    var a: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func countButton(_ sender: Any) {
        a = a + 1
        print(a)
        numberLabel.text = String(a)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        a = 0
        numberLabel.text = String(a)
    }
}

