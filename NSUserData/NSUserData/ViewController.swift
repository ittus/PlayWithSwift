//
//  ViewController.swift
//  NSUserData
//
//  Created by Minh Thang Vu on 6/18/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblColor: UILabel!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            lblColor.text = color
        } else {
            lblColor.text = "Color?"
        }
        
        let personA = Person(firstName: "John", lastName: "Bull")
        let personB = Person(firstName: "John1", lastName: "Bull1")
        let personC = Person(firstName: "John2", lastName: "Bull2")
        
        people.append(personA)
        people.append(personB)
        people.append(personC)
        
        let peopleData = NSKeyedArchiver.archivedDataWithRootObject(people)
        
        NSUserDefaults.standardUserDefaults().setObject(peopleData, forKey: "people")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRedPressed(sender: UIButton) {
        lblColor.text = "Red"
        NSUserDefaults.standardUserDefaults().setValue("Red", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    @IBAction func btnGreenPressed(sender: UIButton) {
        lblColor.text = "Green"
        NSUserDefaults.standardUserDefaults().setValue("Green", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        
        // read encoded data
        if let loadedPeople = NSUserDefaults.standardUserDefaults().objectForKey("people") as? NSData {
            if let peopleArray = NSKeyedUnarchiver.unarchiveObjectWithData(loadedPeople) as? [Person] {
                for person in peopleArray {
                    print(person.firstName)
                }
            }
        }

    }
    
    @IBAction func btnBluePressed(sender: UIButton) {
        lblColor.text = "Blue"
        NSUserDefaults.standardUserDefaults().setValue("Blue", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()

    }
    

}

