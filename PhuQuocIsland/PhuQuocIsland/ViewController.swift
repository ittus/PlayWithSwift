//
//  ViewController.swift
//  PhuQuocIsland
//
//  Created by Minh Thang Vu on 6/11/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moreBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreBtn.layer.cornerRadius = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnMorePressed(sender: UIButton) {
    }

}

