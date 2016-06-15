//
//  GirlTableViewCell.swift
//  CustomTableView
//
//  Created by Minh Thang Vu on 6/15/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class GirlTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgGirl: UIImageView!
    @IBOutlet weak var imgName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgGirl.layer.cornerRadius = 5.0
        imgGirl.clipsToBounds = true
    }

    func configureCell(image: UIImage, text: String) {
        imgGirl.image = image
        imgName.text = text
    }

}
