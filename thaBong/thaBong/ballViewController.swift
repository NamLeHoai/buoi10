//
//  ballViewController.swift
//  thaBong
//
//  Created by Nam Le on 2/11/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ballViewController: UIViewController {

    // khai báo đối tượng imageview
    var ballImageView: UIImageView!
    
//    khai báo timer
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //khởi tạo đối tượng imageView
        ballImageView = UIImageView(frame: CGRect(
                                        x: 150,
                                        y: 60,
                                        width: 100,
                                        height: 100))
        // đặt ảnh cho imagView
        ballImageView.image = UIImage(named: "quabong")
        ballImageView.contentMode = .scaleAspectFit
        
//        thêm imageView vào superview
        view.addSubview(ballImageView)
        ballImageView.transform.rotated(by: CGFloat.pi/2)
        timer = Timer.scheduledTimer(timeInterval: 0.01,
                                                target: self,
                                                selector: #selector(runLoop),
                                                userInfo: nil,
                                                repeats: true)
    }
    
//    khởi tạo bộ định giờ timer
    
    @objc func runLoop(){
        ballImageView.frame.origin.y += 1
        
        if ballImageView.frame.origin.y > view.frame.maxY - ballImageView.frame.height{
            //dừng thời gian bộ định giờ
            timer.invalidate()
            
            //khởi tạo lại bộ định giờ timer
//            timer = Timer.scheduledTimer(timeInterval: 0.01,
//                                                    target: self,
//                                                    selector: #selector(runTimer),
//                                                    userInfo: nil,
//                                                    repeats: true)
        }
    }

    @objc func runTimer(){
        ballImageView.frame.origin.y -= 1
        if ballImageView.frame.origin.y < 60{
            timer.invalidate()
        }
    }
}
