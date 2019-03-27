//
//  ViewController.swift
//  imageView Animation Timer 01
//
//  Created by 방문 사용자 on 26/03/2019.
//  Copyright © 2019 방문 사용자. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    var count = 1
    // var isAnimation = false
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageview.image = UIImage(named: "Image1")
        countLabel.text = String(count)
    }
    @IBAction func playbtn(_ sender: Any) {
        // Timer 호출
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func pausebtn(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @IBAction func stopbtn(_ sender: Any) {
        myTimer.invalidate()
        count = 1
        imageview.image = UIImage(named: "Image1")
        countLabel.text = String(count)
    }
    
    @objc func doAnimation(){
        if count == 5 {
            count = 1
        } else {
            count += 1
        }
        
        imageview.image = UIImage(named: "Image\(count)")
        countLabel.text = String(count)
        
    }
}

