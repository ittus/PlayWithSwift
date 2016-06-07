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
    @IBOutlet weak var penalty1: UIImageView!

    @IBOutlet weak var penalty3: UIImageView!
    @IBOutlet weak var penalty2: UIImageView!
    
    
    let DIM_ALPHA: CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    
    let MAX_PENALTIES = 3
    
    var penalties = 0
    
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgHeart.dropTarget = imgMonster
        imgFood.dropTarget = imgMonster
        
        penalty1.alpha = DIM_ALPHA
        penalty2.alpha = DIM_ALPHA
        penalty3.alpha = DIM_ALPHA
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        startTime()
       
    }
    
    func startTime() {
        if timer != nil {
            timer.invalidate()
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "changeGameState", userInfo: nil, repeats: true)
    }
    
    func changeGameState() {
        penalties++
        
        if penalties == 1 {
            penalty1.alpha = OPAQUE
            penalty2.alpha = DIM_ALPHA
        } else if penalties == 2 {
            penalty2.alpha = OPAQUE
            penalty3.alpha = DIM_ALPHA
        } else if penalties >= 3 {
            penalty3.alpha = OPAQUE
        } else {
            penalty1.alpha = DIM_ALPHA
            penalty2.alpha = DIM_ALPHA
            penalty3.alpha = DIM_ALPHA
        }
        
        if penalties >= MAX_PENALTIES {
            gameOver()
        }
        
    }
    
    func gameOver() {
        timer.invalidate()
        imgMonster.playDeadAnimation()
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        print("Item drop on Object")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

