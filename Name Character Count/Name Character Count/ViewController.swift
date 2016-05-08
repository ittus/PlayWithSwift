//
//  ViewController.swift
//  Name Character Count
//
//  Created by Minh Thang Vu on 5/8/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblTotalCharacter: UILabel!
    
    
    var nameData = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnCalculateACTION(sender: UIButton) {
        calculate()
    }
    
    

    @IBAction func btnClearACTION(sender: UIButton) {
        clear()
    }
    
    
    @IBAction func txtNameEditDidEnd(sender: UITextField) {
        calculate()
    }
    
    func calculate() {
        nameData = txtName.text!
        printResults()
        hideKeyboard()
    }
    
    func clear() {
        txtName.text = ""
        lblTotalCharacter.text = "0"
        hideKeyboard()
        
    }
    
    func printResults() {
        
        var nameArray = Array(nameData.characters)
        lblTotalCharacter.text = "\(nameArray.count)"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        hideKeyboard()
    }
    
    func hideKeyboard() {
        txtName.resignFirstResponder()
    }
}

