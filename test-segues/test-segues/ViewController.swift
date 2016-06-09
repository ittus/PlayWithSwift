//
//  ViewController.swift
//  test-segues
//
//  Created by Minh Thang Vu on 6/9/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadOrange(sender: AnyObject) {
        var str = "I'm from First Screen"
        performSegueWithIdentifier("goToOrange", sender: str)
    }

    @IBAction func loadGreen(sender: UIButton) {
         performSegueWithIdentifier("goToGreen", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToOrange" {
            if let orangeVC  = segue.destinationViewController as? OrangeViewController {
                if let theString = sender as? String {
                    orangeVC.transferText = theString
                }
            }
        }
    }

}

