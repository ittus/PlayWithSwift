//
//  ViewController.swift
//  YouAreCool
//
//  Created by Minh Thang Vu on 5/14/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coolLogo: UIImageView!
    
    @IBOutlet weak var coolBg: UIImageView!
    @IBOutlet weak var btnMakeMeCool: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makeMeCool(sender: UIButton) {
        coolLogo.hidden = false
        coolBg.hidden = false
        
        btnMakeMeCool.hidden = true
    }

}

