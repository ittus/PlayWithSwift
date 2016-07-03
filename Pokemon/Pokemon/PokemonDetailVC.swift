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
    @IBOutlet weak var imgMain: UIImageView!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblDefense: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    
    @IBOutlet weak var lblPokedexId: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblBaseAttack: UILabel!
    
    @IBOutlet weak var lblEvolution: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = pokemon.name
    }
    
    @IBAction func btnBackPressed(sender: UIButton) {
    }
    
    
}
