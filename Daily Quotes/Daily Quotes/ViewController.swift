//
//  ViewController.swift
//  Daily Quotes
//
//  Created by Minh Thang Vu on 5/11/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myQuote: UILabel!
    
    @IBOutlet weak var btnQuote: UIButton!
    
    var quotes = ["Em than tuong anh Thang", "Anh Thang muon nam", "Anh Thang dep trai", "Thang is number one"]
    var quoteChoice = 0
    
    var btnTexts = ["Another quote", "Next", "Inspire me"]
    var btnChoice = 0
    
    var numberCheck = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnQuoteAction(sender: UIButton) {
        selectQuote()
        changeBtnText()
    }
    
    func selectQuote() {
        while (quoteChoice == numberCheck) {
            quoteChoice = Int(arc4random_uniform(UInt32(quotes.count)))
        }
        numberCheck = quoteChoice
        printQuote()
    }
    
    func printQuote() {
        myQuote.text = "\(quotes[quoteChoice])"
        
    }
    
    func changeBtnText() {
        btnChoice = Int(arc4random_uniform(UInt32(btnTexts.count)))
        btnQuote.setTitle("\(btnTexts[btnChoice])", forState: UIControlState.Normal)
    }

}

