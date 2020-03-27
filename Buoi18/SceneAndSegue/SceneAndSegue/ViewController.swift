//
//  ViewController.swift
//  SceneAndSegue
//
//  Created by Quynh on 3/24/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let nextButton: UIButton = {
       let button = UIButton()
        button.setTitle("Next To Screen 3", for: .normal)
        button.addTarget(self, action: #selector(onPresent2), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nextButton)
        nextButton.frame = CGRect(x: 50, y: 100, width: 200, height: 60)
    }
    
    @IBAction func unwindFromScreen2(_ segue: UIStoryboardSegue){
        print("back")
    }
    
    @IBAction func onPresent(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let screen2VC = storyboard.instantiateViewController(identifier: "Screen2ViewController")
        
        // ngăn việc kéo xuống của viewcontroller
//        screen2VC.isModalInPresentation = true
        screen2VC.modalPresentationStyle = .fullScreen
        
        present(screen2VC, animated: true, completion: nil)
    }
    
    @objc func onPresent2(){
        let screen3VC = Screen3ViewController()
        present(screen3VC, animated: true, completion: nil)
    }
}

