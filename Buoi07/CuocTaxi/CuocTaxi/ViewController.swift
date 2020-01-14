//
//  ViewController.swift
//  CuocTaxi
//
//  Created by Taof on 1/13/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelgia: UILabel!
    @IBOutlet weak var kmtextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after
        //loading the view.
        
        kmtextfield.placeholder = " hãy nhập số km đã đi"
        
    }
    
    
    @IBAction func tinhTien(_ sender: Any) {
        let km = Int(kmtextfield.text ?? " ") ?? 0
        var gia = 5000
        if km > 0 && km < 1 {
            labelgia.text = " giá của bạn là \(gia) "
        }else if km < 31 {
            gia = (km-1)*4000+5000
            labelgia.text = " giá của bạn là \(gia) "
            
        }else{
            gia = 29*4000+5000+(km-31)*3000
            labelgia.text = " giá của bạn là \(gia) "
            
        }
    }
}


