//
//  FirstViewController.swift
//  Calculator
//
//  Created by Minh Thang Vu on 5/11/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    // addition outlet
    @IBOutlet weak var txtAddFirstNumber: UITextField!
    @IBOutlet weak var txtAddSecondNumber: UITextField!
    
    @IBOutlet weak var lblAddAnswer: UILabel!
    
    // multiple outlet
    @IBOutlet weak var txtMulNum1: UITextField!
    @IBOutlet weak var txtMulNum2: UITextField!
    @IBOutlet weak var lblMulRes: UILabel!
  
    //division outlet
    @IBOutlet weak var txtDivNum1: UITextField!
    
    @IBOutlet weak var txtDivNum2: UITextField!
    
    @IBOutlet weak var lblDivRes: UILabel!
    
    
    // add var
    var additionFirstNumber = ""
    var additionSecondNumber = ""
    var resultAdd = 0.0
    
    // mul var
    var mulFirstNumber = ""
    var mulSecondNumber = ""
    var resultMul = 0.0
    
    // div var
    var divFirstNumber = ""
    var divSecondNumber = ""
    var resDiv = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.txtAddFirstNumber.delegate = self
//        self.txtAddSecondNumber.delegate = self
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAddAction(sender: UIButton) {
        additionFirstNumber = txtAddFirstNumber.text!
        additionSecondNumber = txtAddSecondNumber.text!
        
        let resultAdd = Float(additionFirstNumber)! + Float(additionSecondNumber)!
        
        lblAddAnswer.text = "\(resultAdd)"
    }
    
    
    @IBAction func btnMultiAction(sender: UIButton) {
        mulFirstNumber = txtMulNum1.text!
        mulSecondNumber = txtMulNum2.text!
        
        let res = Float(mulFirstNumber)! * Float(mulSecondNumber)!
        
        lblMulRes.text = "\(res)"
    }
    
    
    @IBAction func btnDivAction(sender: UIButton) {
        divFirstNumber = txtDivNum1.text!
        divSecondNumber = txtDivNum2.text!
        
        let res = Float(divFirstNumber)! / Float(divSecondNumber)!
        
        lblDivRes.text = "\(res)"
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func btnClearAddAction(sender: UIButton) {
        txtAddSecondNumber.text = ""
        txtAddFirstNumber.text = ""
        lblAddAnswer.text = "Answer"
        
    }
    
    @IBAction func btnClearMulAction(sender: UIButton) {
        txtMulNum1.text = ""
        txtMulNum2.text = ""
        lblMulRes.text = "Answer"
    }
    
    @IBAction func btnClearDiv(sender: UIButton) {
        txtDivNum1.text = ""
        txtDivNum2.text = ""
        lblDivRes.text = "Answer"
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        txtAddSecondNumber.resignFirstResponder()
//        txtAddFirstNumber.resignFirstResponder()
        
        return true;
    }
    

}

