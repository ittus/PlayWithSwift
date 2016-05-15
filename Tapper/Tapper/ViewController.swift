//
//  ViewController.swift
//  Tapper
//
//  Created by Minh Thang Vu on 5/15/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Properties
    var maxTap = 0
    var currentTap = 0
    
    // Outlet
    @IBOutlet weak var ivLogo: UIImageView!
    
    @IBOutlet weak var btnPlay: UIButton!
    
    @IBOutlet weak var txtInput: UITextField!
    
    
    @IBOutlet weak var btnStart: UIButton!
    
    
    @IBOutlet weak var lblCountRes: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPlayACTION(sender: UIButton) {

        
        if txtInput.text != nil && txtInput.text != "" {
            
            ivLogo.hidden = true
            btnPlay.hidden = true
            txtInput.hidden = true
            
            btnStart.hidden = false
            lblCountRes.hidden = false
            
            maxTap = Int(txtInput.text!)!
            currentTap = 0
            
            updateResult()
        }
    }
    
    @IBAction func btnStarAction(sender: UIButton) {
        currentTap = currentTap + 1
        
        if (isGameOver()) {
            restartGame()
        } else {
            updateResult()
        }
        
    }
    
    func isGameOver() ->Bool {
        if currentTap >= maxTap {
            return true
        }
        return false
    }
    
    func restartGame() {
        
        ivLogo.hidden = false
        btnPlay.hidden = false
        txtInput.hidden = false
        txtInput.text = ""
        
        btnStart.hidden = true
        lblCountRes.hidden = true
    }
    
    func updateResult() {
        lblCountRes.text = "\(currentTap) taps"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}

