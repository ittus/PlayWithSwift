//
//  ViewController.swift
//  GigaPet
//
//  Created by Minh Thang Vu on 6/6/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgMonster: MonsterImg!
    
    @IBOutlet weak var imgHeart: DragImg!
    @IBOutlet weak var imgFood: DragImg!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgHeart.dropTarget = imgMonster
        imgFood.dropTarget = imgMonster
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        
       
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        print("Item drop on Object")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

