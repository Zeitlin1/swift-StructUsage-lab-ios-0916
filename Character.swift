//
//  Character.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

struct Character{
    var name: String
    var species: String
    var occupation: String
    var powerLevel: Double
    var killedEnemies = 0
    var bestFriend = ""
    
    init (name: String, species: String, occupation: String, powerLevel: Double) {
        self.name = name
        self.species = species
        self.occupation = occupation
        self.powerLevel = powerLevel
    }
    
    mutating func fightEnemy(enemy charName: Character){
        if self.powerLevel > charName.powerLevel {
            killedEnemies += 1
            self.powerLevel += 10.0
        } else if self.powerLevel < charName.powerLevel {
            self.powerLevel -= 10.0
        }
    }
    
    mutating func becomeBestFriends(with friend: String){
    
        bestFriend = friend
    
    }


    func displayImage() -> UIImage {
        
        switch name {
        case "Finn The Human":
            return UIImage(named: "Finn")!
        case "Jake The Dog":
            return UIImage(named: "JakeTheDog")!
        case "Princess Bubblegum":
            return UIImage(named: "PrincessBubblegum")!
        case "Lemongrab":
            return UIImage(named: "Lemongrab")!
        case "BMO":
            return UIImage(named: "BMO")!
        case "Lumpy Space Princess":
            return UIImage(named: "LumpySpacePrincess")!
        default:
            return UIImage()
        }
        
    }

    
    





}

   
