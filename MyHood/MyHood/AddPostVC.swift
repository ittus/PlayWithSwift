//
//  AddPostVC.swift
//  MyHood
//
//  Created by Minh Thang Vu on 6/22/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    @IBOutlet weak var lblTitle: UITextField!
    
    @IBOutlet weak var lblDescription: UITextField!
    
    
    @IBOutlet weak var imgPost: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgPost.layer.cornerRadius = imgPost.frame.size.width/2
        imgPost.clipsToBounds = true
    }
    @IBAction func makePostBtnPressed(sender: UIButton) {
    }
    
    
    @IBAction func cancelBtnPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func addPicBtnPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }
    
}
