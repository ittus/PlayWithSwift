//
//  SecondViewController.swift
//  Calculator
//
//  Created by Minh Thang Vu on 5/11/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtSubNum1: UITextField!
    
    @IBOutlet weak var txtDivNum2: UITextField!
    
    @IBOutlet weak var lblSubRes: UILabel!
    
    var num1 = ""
    var num2 = ""
    var res: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func txtSubAction(sender: UIButton) {
        num1 = txtSubNum1.text!
        num2 = txtDivNum2.text!
        
        res = Float(num1)! - Float(num2)!
        
        lblSubRes.text = "\(res)"
    }

    @IBAction func btnClearAction(sender: UIButton) {
        txtSubNum1.text = ""
        txtDivNum2.text = ""
        lblSubRes.text = "Answer"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }

}

