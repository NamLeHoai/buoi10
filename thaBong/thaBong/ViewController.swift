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
    var yBanDau: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        yBanDau = quaBongImage.frame.origin.y
        chuyenDong2()

        

    }
    
//    func chuyenDong1(){
//        UIView.animate(withDuration: 1){
//            self.quaBongImage.frame.origin.y += self.view.frame.maxY - self.quaBongImage.frame.height*2 - 20
//        }
//    }

    
    func chuyenDong2(){
        UIView.animate(withDuration: 1, animations: {
                                                    self.quaBongImage.frame.origin.y += self.view.frame.maxY - self.quaBongImage.frame.height*2 - 20})
        { (_) in
            UIView.animate(withDuration: 1){
                self.quaBongImage.frame.origin.y -= self.view.frame.maxY - self.yBanDau - self.quaBongImage.frame.height*2
            }
        }
    }
}
