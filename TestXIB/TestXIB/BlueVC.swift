//
//  BlueVC.swift
//  TestXIB
//
//  Created by Minh Thang Vu on 6/9/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {
    
    
    @IBOutlet weak var lblPrintText: UILabel!
    var printTxt = ""
    convenience init(printStr: String) {
        self.init(nibName: "BlueVC", bundle: nil)
        printTxt = printStr
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPrintText.text = printTxt
        // Do any additional setup after loading the view.
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
