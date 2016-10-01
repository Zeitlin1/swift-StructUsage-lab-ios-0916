//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

  
    
    @IBOutlet weak var nameLabel: UILabel!
    
   
    @IBOutlet weak var occupationLabel: UILabel!

    
    @IBOutlet weak var speciesLabel: UILabel!
    
    
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
   
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        createAllCharacters()

        print(sender.tag)
        print(sender.currentTitle)
        
        
       switch sender.tag {
        
        case 0:
            updateViews(with: finn)
        
        case 1:
            updateViews(with: jake)
        
        case 2:
            updateViews(with: bubblegum)
        
        case 3:
            updateViews(with: bmo)
        
        case 4:
            updateViews(with: lemongrab)
        
        case 5:
            updateViews(with: lsp)
        
        default:
            break
            
        }
        
    }
    
    
    func createAllCharacters() {
        finn = Character(name:"Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        
        jake = Character(name:"Jake The Dog", species: "Dog", occupation: "DogWhisperer", powerLevel: 20.0)
        
        
        bubblegum = Character(name:"Princess Bubblegum", species: "Gum", occupation: "Chewer", powerLevel: 5.0)
        
        
        bmo = Character(name:"BMO", species: "cloud", occupation: "Stinker", powerLevel: 10.0)
        
        lemongrab = Character(name:"Lemongrab", species: "Lemon", occupation: "Sour Puss", powerLevel: 30.0)
        
        lsp = Character(name:"Lumpy Space Princess", species: "Voice", occupation: "Singer", powerLevel: 100.0)
        
        
    }
    
    func updateViews(with character:Character) {
        
        
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
        characterImageView.image = character.displayImage()
        
        
        
    }
    

}

