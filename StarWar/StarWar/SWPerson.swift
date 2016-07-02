//
//  SWPerson.swift
//  StarWar
//
//  Created by Minh Thang Vu on 7/2/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import Foundation

class SWPerson {
    private var _name: String!
    private var _height: String!
    private var _birthYear: String!
    private var _hairColor: String!
    
    var name: String {
        return _name
    }
    
    var height: String {
        get {
            return _height
        }
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var hairColor: String {
        return _hairColor
    }
    
    init(name: String, height: String, birthYear: String, hairColor: String) {
        _name = name
        _height = height
        _birthYear = birthYear
        _hairColor = hairColor
        
    }
}