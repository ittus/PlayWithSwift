//
//  Person.swift
//  NSUserData
//
//  Created by Minh Thang Vu on 6/18/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class Person: NSObject, NSCoding {
    var firstName: String!
    var lastName: String!
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    override init() {
        
    }
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self.firstName = aDecoder.decodeObjectForKey("firstName") as? String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
    }
    
}
