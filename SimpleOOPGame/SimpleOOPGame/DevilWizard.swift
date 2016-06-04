//
//  DevilWizard.swift
//  SimpleOOPGame
//
//  Created by Minh Thang Vu on 6/4/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}