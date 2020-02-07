//
//  ViewController.swift
//  thaBong
//
//  Created by Nam Le on 2/7/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quaBongImage: UIImageView!
    
    let widthScreen = UIScreen.main.bounds.width
    let heightScreen = UIScreen.main.bounds.height
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//                set vị trí bóng
        quaBongImage.center.x = view.center.x
        quaBongImage.frame = CGRect(x: widthScreen/2 - 50, y: 50, width: 100, height: 100)

        UIView.animate(withDuration: 4){
            self.quaBongImage.frame = CGRect(x: self.widthScreen/2 - 50, y: self.heightScreen - 100, width: 100, height: 100)

        }

        
//        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
//        
    }
    
//    @objc func runLoop(){
//        self.quaBongImage.center.y += heightScreen/6
//    }
    
    
}

