//
//  ViewController.swift
//  Retro-Calculator
//
//  Created by Minh Thang Vu on 5/21/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    enum Opertaion: String {
        case Divide = "/"
        case Multiple = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    @IBOutlet weak var lblOutput: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    var runningNumber = ""
    var leftVarStr = ""
    var rightVarStr = ""
    var currentOperation: Opertaion = Opertaion.Empty
    var result = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberPress(btn: UIButton!) {
        playSound()
        
        runningNumber += "\(btn.tag)"
        lblOutput.text = "\(runningNumber)"
    }

    @IBAction func onDividePressed(sender: UIButton) {
        processOperation(Opertaion.Divide)
    }
    
    @IBAction func onMultiPressed(sender: UIButton) {
         processOperation(Opertaion.Multiple)
    }
    
    @IBAction func onSubtractPressed(sender: UIButton) {
         processOperation(Opertaion.Subtract)
    }
    
    @IBAction func onAddPressed(sender: UIButton) {
         processOperation(Opertaion.Add)
    }
    
    @IBAction func onEqualPressed(sender: UIButton) {
         processOperation(currentOperation)
    }
    
    func processOperation(op: Opertaion) {
        playSound()
        
        if currentOperation != Opertaion.Empty {
            // Run calculating
            if runningNumber != "" {
                rightVarStr = runningNumber
                runningNumber = ""
                switch currentOperation {
                case Opertaion.Divide:
                    result = "\(Double(leftVarStr)! / Double(rightVarStr)! )"
                case Opertaion.Multiple:
                    result = "\(Double(leftVarStr)! * Double(rightVarStr)! )"
                case Opertaion.Subtract:
                    result = "\(Double(leftVarStr)! - Double(rightVarStr)! )"
                case Opertaion.Add:
                    result = "\(Double(leftVarStr)! + Double(rightVarStr)! )"
                default:
                    print("No case applied")
                }
                
                leftVarStr = result
                lblOutput.text = leftVarStr
            }
           
          
            
            currentOperation = op
        } else {
            // first time operation button is pressed
            leftVarStr = runningNumber
            runningNumber = ""
            currentOperation = op
        }
    }
    
    func playSound() {
        if btnSound.playing {
            btnSound.stop()
        }
        btnSound.play()
    }
    

}

