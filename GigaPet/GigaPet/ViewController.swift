//
//  ViewController.swift
//  GigaPet
//
//  Created by Minh Thang Vu on 6/6/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgMonster: UIImageView!
    
    @IBOutlet weak var imgHeart: DragImg!
    @IBOutlet weak var imgFood: DragImg!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imgArray = [UIImage]()
        for x in 1...4 {
            print("idle\(x).png")
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        imgMonster.animationImages = imgArray
        imgMonster.animationDuration = 0.8
        imgMonster.animationRepeatCount = 0
        imgMonster.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

