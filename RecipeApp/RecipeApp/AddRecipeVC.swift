//
//  AddRecipeVC.swift
//  RecipeApp
//
//  Created by Minh Thang Vu on 6/25/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//
import CoreData
import UIKit

class AddRecipeVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var lblTitle: UITextField!
    @IBOutlet weak var lblDescrption: UITextField!
    @IBOutlet weak var lblSteps: UITextField!
    @IBOutlet weak var imgRecipe: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        imgRecipe.layer.cornerRadius = 4.0
        imgRecipe.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        imgRecipe.image = image
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func createRecipe(sender: AnyObject!) {
        if let title = lblTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Recipe", inManagedObjectContext: context)!
            let recipe = Recipe(entity: entity, insertIntoManagedObjectContext: context)
            
            recipe.title = title
            recipe.ingredients = lblDescrption.text
            recipe.steps = lblSteps.text
            recipe.setRecipeImage(imgRecipe.image!)
            
            
            context.insertObject(recipe)
            
            do {
                try context.save()
            } catch {
                print("Couldn't save recipe")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}
