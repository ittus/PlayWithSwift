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
    
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = pokemon.name
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        
        imgMain.image = img
        currentEvoImg.image = img
        
        pokemon.downloadPokemonDetails { () -> () in
            self.updateUI()
        }
        
        
    }
    
    func updateUI() {
        lblDescription.text = pokemon.description
        lblType.text = pokemon.type
        lblDefense.text = pokemon.defense
        lblHeight.text = pokemon.height
        lblWeight.text = pokemon.weight
        lblBaseAttack.text = pokemon.attack
        lblPokedexId.text = "\(pokemon.pokedexId)"
        
        if pokemon.nextEvolutionId == "" {
            lblEvolution.text = "No Evolution"
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: "\(pokemon.nextEvolutionId)")
            
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLvl != "" {
                str += " - LVL \(pokemon.nextEvolutionLvl)"
            }
        }
        
        
    }
    
    @IBAction func btnBackPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}
