//
//  AddPostVC.swift
//  MyHood
//
//  Created by Minh Thang Vu on 6/22/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var lblTitle: UITextField!
    
    @IBOutlet weak var lblDescription: UITextField!
    
    
    @IBOutlet weak var imgPost: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgPost.layer.cornerRadius = imgPost.frame.size.width/2
        imgPost.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    @IBAction func makePostBtnPressed(sender: UIButton) {
        if let title = lblTitle.text, let description = lblDescription.text, let img = imgPost.image {
            let imagePath = DataServices.instance.saveImageAndCreatePath(img)
            let post = Post(imagePath: imagePath, title: title, description: description)
            DataServices.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    
    @IBAction func cancelBtnPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func addPicBtnPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        imgPost.image = image
    }
    
    
}
