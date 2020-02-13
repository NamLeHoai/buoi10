//
//  nayCheoViewController.swift
//  thaBong
//
//  Created by Nam Le on 2/13/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class nayCheoViewController: UIViewController {

    var ballImageView : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        khởi tạo
        ballImageView = UIImageView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 100,
                                                  height: 100))
//        đặt ảnh
        ballImageView.image = UIImage(named: "quabong")
        ballImageView.contentMode = .scaleAspectFit
        
//        add uiview
        view.addSubview(ballImageView)
        nayCheo()
    }
    
    func nayCheo(){
        UIView.animate(withDuration: 2, animations: {
            self.ballImageView.frame.origin.y += self.view.frame.maxY/3 - self.ballImageView.frame.height/2
            self.ballImageView.frame.origin.x += self.view.frame.maxX - self.ballImageView.frame.width
        }){ (_) in
            UIView.animate(withDuration: 2, animations: {
                self.ballImageView.frame.origin.y += self.view.frame.maxY/3 - self.ballImageView.frame.height/2
                self.ballImageView.frame.origin.x = 0

            }){ (_) in
                UIView.animate(withDuration: 2, animations: {
                    self.ballImageView.frame.origin.y += self.view.frame.maxY/3 - self.ballImageView.frame.height/2
                    self.ballImageView.frame.origin.x += self.view.frame.maxX - self.ballImageView.frame.width

                })
                            }
            
        }
    }

}
