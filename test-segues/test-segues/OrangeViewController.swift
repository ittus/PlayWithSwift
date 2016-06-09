//
//  OrangeViewController.swift
//  test-segues
//
//  Created by Minh Thang Vu on 6/9/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var lblTxt: UILabel!
    var transferText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTxt.text = transferText

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        lblTxt.text = transferText
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
