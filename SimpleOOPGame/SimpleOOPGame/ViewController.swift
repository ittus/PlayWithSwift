//
//  ViewController.swift
//  SimpleOOPGame
//
//  Created by Minh Thang Vu on 6/2/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerLbl: UILabel!
    @IBOutlet weak var enemyLbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!

    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        generateRandomEnemy()
        player = Player(name: "Vu Minh Thang", hp: 110, attackPwr: 20)
        playerLbl.text = "\(player.hp) HP"
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attachPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attachPwr: 15)
        }
        enemyLbl.text = "\(enemy.hp) HP"
        enemyImg.hidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onChestTapped(sender: UIButton) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }

    @IBAction func attachTapped(sender: UIButton) {
        
        if enemy.attemptAttack(player.attachPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attachPwr) HP"
            enemyLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attacked unsuccessful!"
        }
        
        if let loot = enemy.dropLoop() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
        
    }
}

