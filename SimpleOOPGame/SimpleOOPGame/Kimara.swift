//
//  Kimara.swift
//  SimpleOOPGame
//
//  Created by Minh Thang Vu on 6/4/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Kimara Venom", "Tough Hide", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackedPwr: Int) -> Bool {
        print(attackedPwr)
        if attackedPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackedPwr)
        } else {
            return false
        }
    }
}