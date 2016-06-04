//
//  Character.swift
//  SimpleOOPGame
//
//  Created by Minh Thang Vu on 6/2/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attachPwr: Int = 10
    
    var attachPwr: Int {
        get {
            return _attachPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attachPwr: Int) {
        self._hp = startingHp
        self._attachPwr = attachPwr
    }
    
    func attemptAttack(attackedPwr: Int) -> Bool {
        self._hp -= attackedPwr
        return true
    }
    
    
}