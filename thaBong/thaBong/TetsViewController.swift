//
//  TetsViewController.swift
//  thaBong
//
//  Created by Nam Le on 2/12/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit
//khai báo đối tượng imageview
var ballImageView: UIImageView!
var timer: Timer!
var h: CGFloat = 0
enum Type{
    case roi
    case nay
}
var ballType = Type.nay
class TetsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        khởi tạo đối tượng imageview
        ballImageView = UIImageView(frame: CGRect(x: 150, y: 100, width: 100, height: 100))
        //        đặt ảnh
        ballImageView.image = UIImage(named: "quabong")
        ballImageView.contentMode = .scaleAspectFit
        
        //        add vào superview
        view.addSubview(ballImageView)
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runRoi), userInfo: nil, repeats: true)
        
        h = view.frame.maxY - ballImageView.frame.origin.y
        
    }
    @objc func runNay(){
        ballImageView.frame.origin.y -= 1.5
        if ballImageView.frame.origin.y == h{
            timer.invalidate()
            h /= 2
            
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runRoi), userInfo: nil, repeats: true)
        }
        
        
    }
    
    @objc func runRoi(){
        ballImageView.frame.origin.y += 1.5
        if ballImageView.frame.origin.y == view.frame.maxY - ballImageView.frame.height{
            timer.invalidate()
            
                    timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runNay), userInfo: nil, repeats: true)
        }
        

    }
    
    
    
    
}
