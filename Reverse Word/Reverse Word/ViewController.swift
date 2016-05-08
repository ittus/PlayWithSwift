//
//  ViewController.swift
//  Reverse Word
//
//  Created by Minh Thang Vu on 5/8/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtWord: UITextField!
    
    @IBOutlet weak var lblReverseWord: UILabel!
    
    var wordData = ""
    var reverseWord = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnDoItACTION(sender: UIButton) {
        reverseWordFunc()
    }
    
    
    @IBAction func btnClearACTION(sender: UIButton) {
        clear()
    }
    
    func reverseWordFunc() {
        wordData = txtWord.text!
        reverseWord = String(wordData.characters.reverse())
        printResults()
        hideKeyboard()
    }
    
    func clear() {
        txtWord.text = ""
        lblReverseWord.text = ""
        hideKeyboard()
    }
    
    func printResults() {
        lblReverseWord.text = "\(reverseWord.lowercaseString)"
    }
    
    func hideKeyboard() {
        txtWord.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }

}

