//
//  ViewController.swift
//  Stock Profit Calculator
//
//  Created by Minh Thang Vu on 5/14/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtOriginalPrice: UITextField!
    @IBOutlet weak var txtUniBought: UITextField!
    @IBOutlet weak var txtSellingPrice: UITextField!
    
    
    @IBOutlet weak var lblPercentIncrease: UILabel!
    
    @IBOutlet weak var lblProfit: UILabel!
    
    var originalPrice = ""
    var unitBought = ""
    var sellingPrice = ""
    
    var percentIncrease: Float = 0.0
    var profit: Float = 0.0
    
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
    
    func calculate() {
        
        originalPrice = txtOriginalPrice.text!
        unitBought = txtUniBought.text!
        sellingPrice = txtSellingPrice.text!
        
        var fOriginPrice = Float(originalPrice)!
        var fUnitBought = Float(unitBought)!
        var fSellingPrice = Float(sellingPrice)!
        
        percentIncrease = (fSellingPrice/fOriginPrice - 1) * 100
        profit = (fSellingPrice * fUnitBought) - (fOriginPrice * fUnitBought)
        
        printResult()
        
    }
    
    func printResult() {
        var sProfit = String(format: "%0.2f", profit)
        var SPercent = String(format: "%0.2f", percentIncrease)
        
        lblPercentIncrease.text = "\(SPercent)%"
        lblProfit.text = "$\(sProfit)"
    }
    
    func clear() {
        txtOriginalPrice.text = ""
        txtUniBought.text = ""
        txtSellingPrice.text = ""
        
        lblPercentIncrease.text = "Percent Increase"
        lblProfit.text = "Profit"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }
    

}

