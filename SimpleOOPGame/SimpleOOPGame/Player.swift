//
//  Player.swift
//  SimpleOOPGame
//
//  Created by Minh Thang Vu on 6/2/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import Foundation


class Player: Character {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attachPwr: attackPwr)
        
        _name = name
    }
}