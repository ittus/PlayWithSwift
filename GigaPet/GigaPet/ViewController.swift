//
//  ViewController.swift
//  GigaPet
//
//  Created by Minh Thang Vu on 6/6/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit
import AVFoundation

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
    
    var monsterHappy = false
    
    var currentItem: UInt32 = 0
    
    var musicPlayer: AVAudioPlayer!
    var sfxBite: AVAudioPlayer!
    var sfxHeart: AVAudioPlayer!
    var sfxDeath: AVAudioPlayer!
    var sfxSkull: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgHeart.dropTarget = imgMonster
        imgFood.dropTarget = imgMonster
        
        penalty1.alpha = DIM_ALPHA
        penalty2.alpha = DIM_ALPHA
        penalty3.alpha = DIM_ALPHA
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        
        do {
            try musicPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath:
                NSBundle.mainBundle().pathForResource("cave-music", ofType: "mp3")!))
            try sfxBite = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath:
                NSBundle.mainBundle().pathForResource("bite", ofType: "wav")!))
            
            try sfxDeath  = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath:
                NSBundle.mainBundle().pathForResource("death", ofType: "wav")!))
            
            try sfxSkull = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath:
                NSBundle.mainBundle().pathForResource("skull", ofType: "wav")!))
            
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
            sfxBite.prepareToPlay()
            sfxDeath.prepareToPlay()
            sfxSkull.prepareToPlay()

        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        startTimer()
       
    }
    
    func startTimer() {
        if timer != nil {
            timer.invalidate()
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "changeGameState", userInfo: nil, repeats: true)
    }
    
    func changeGameState() {
        
        if !monsterHappy {
            
            sfxSkull.play()
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
        
        let rand = arc4random_uniform(2)
        
        if rand == 0 {
            imgFood.alpha = DIM_ALPHA
            imgFood.userInteractionEnabled = false
            imgHeart.alpha = OPAQUE
            imgHeart.userInteractionEnabled = true
        } else {
            imgHeart.alpha = DIM_ALPHA
            imgHeart.userInteractionEnabled = false
            imgFood.alpha = OPAQUE
            imgFood.userInteractionEnabled = true
            
        }
        
        currentItem = rand
        monsterHappy = false
        
    }
    
    func gameOver() {
        timer.invalidate()
        imgMonster.playDeadAnimation()
        sfxDeath.play()
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        print("Item drop on Object")
        monsterHappy = true
        startTimer()
        
        imgFood.alpha = DIM_ALPHA
        imgFood.userInteractionEnabled = false
        imgHeart.alpha = DIM_ALPHA
        imgHeart.userInteractionEnabled = false
        
        if currentItem == 0 {
            
        } else {
            sfxBite.play()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

