//
//  PokemonDetailVC.swift
//  Pokemon
//
//  Created by Minh Thang Vu on 7/3/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = pokemon.name
    }
    
    
}
