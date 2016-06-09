//
//  ViewController.swift
//  TestXIB
//
//  Created by Minh Thang Vu on 6/9/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    var blueVC: BlueVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadBlueView(sender: UIButton) {
        blueVC = BlueVC(printStr: "I am superman!")
        self.presentViewController(blueVC, animated: true, completion: nil)
    }

}

