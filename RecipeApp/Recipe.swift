//
//  Recipe.swift
//  RecipeApp
//
//  Created by Minh Thang Vu on 6/25/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Recipe: NSManagedObject {
    func setRecipeImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getRecipeImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
