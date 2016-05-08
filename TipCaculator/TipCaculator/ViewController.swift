//
//  ViewController.swift
//  TipCaculator
//
//  Created by Minh Thang Vu on 5/7/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtMealCost: UITextField!
    @IBOutlet weak var txtTipPercent: UITextField!
    
    
    @IBOutlet weak var lblTipCost: UILabel!
    @IBOutlet weak var lblTotalCost: UILabel!
    
    var mealCost = ""
    var tipPercent = ""
    
    var totalTip: Float = 0.0
    var totalCost: Float = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtMealCost.delegate = self
        txtTipPercent.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCalculateAction(sender: UIButton) {
        calculateTip()
    }

    
    @IBAction func btnClearAction(sender: UIButton) {
        clearField()
    }
    
    func calculateTip() {
        mealCost = txtMealCost.text!
        tipPercent = txtTipPercent.text!
        
        let mealCostValue = Float(mealCost)
        let tipPercentValue = Float(tipPercent)
        
        totalTip = mealCostValue!*(tipPercentValue! / 100)
        totalCost = mealCostValue! + totalTip
        
        printTip()
        
        
    }
    
    func clearField() {
        txtMealCost.text = ""
        txtTipPercent.text = ""
        lblTipCost.text = "Tip: $0.00"
        lblTotalCost.text = "$0.00"
    }
    
    func printTip() {
        
        let formatTip = String(format: "%0.2f", totalTip)
        let formatTotal = String(format: "%0.2f", totalCost)
        lblTipCost.text = "Tip: $\(formatTip)"
        lblTotalCost.text = "$\(formatTotal)"
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

