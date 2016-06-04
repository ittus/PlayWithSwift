//
//  Enemy.swift
//  SimpleOOPGame
//
//  Created by Minh Thang Vu on 6/4/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import Foundation

class Enemy: Character {
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoop() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
            
        }
        return nil
    }
    
}