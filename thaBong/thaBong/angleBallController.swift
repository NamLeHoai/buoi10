//
//  angleBallController.swift
//  thaBong
//
//  Created by Nam Le on 2/11/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

enum roll{
    case right
    case left
    case up
    case down
}
class angleBallController: UIViewController {

    // khai báo đối tượng imageView
    var ballImageView: UIImageView!
    var timer: Timer!
    var rollType: roll = .down
    var n: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()

//        khởi tạo đối tượng imageView
        ballImageView = UIImageView(frame: CGRect(
                                        x: 0,
                                        y: 0,
                                        width: 100,
                                        height: 100))
//        đặt ảnh cho imageView
        ballImageView.image = UIImage(named: "quabong")
        ballImageView.contentMode = .scaleAspectFit
        
//        thêm image vào superView
        view.addSubview(ballImageView)
        
        //trượt
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runDown), userInfo: nil, repeats: true)
        
        //xoay
        
        
            }
    
    func xoay(){
        let giay = CGAffineTransform(rotationAngle: CGFloat.pi/2)
        ballImageView.transform = ballImageView.transform.concatenating(giay)
    }
        
    @objc func runDown(){
        ballImageView.frame.origin.y += 1
//        xoay()
        
        if ballImageView.frame.origin.y == view.frame.maxY - ballImageView.frame.height{
            timer.invalidate()
            
            //tạo lại timer
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runRight), userInfo: nil, repeats: true)
            
        }
        
    }
    
    @objc func runRight(){
        ballImageView.frame.origin.x += 1
        
        if ballImageView.frame.origin.x == view.frame.maxX - ballImageView.frame.width{
            timer.invalidate()
            
            //tạo lại timer
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runUp), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func runUp(){
        ballImageView.frame.origin.y -= 1
        if ballImageView.frame.origin.y == 0{
            timer.invalidate()
            
            //tạo lại timer
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runLerf), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func runLerf(){
        ballImageView.frame.origin.x -= 1
        if ballImageView.frame.origin.x == 0{
            timer.invalidate()
            
            //tạo lại timer
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runDown), userInfo: nil, repeats: true)
        }
        
    }
    
}



