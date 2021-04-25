//
//  DefaultHeros.swift
//  CustomCellsTest
//
//  Created by Armands Berzins on 12/04/2021.
//

import Foundation

class DefaultHeros {
    
    /* To make normal class to singleton*/
    static let shared = DefaultHeros()
    init(){}
    /***/
    
    let batman = Hero(heroName: "Batman",
                      realName: "Bruce Wayne",
                      imageNameRoot: "batman")
    
    let superman = Hero(heroName: "Superman",
                        realName: "Clark Kent",
                        imageNameRoot: "superman")
    
    let wonderWoman = Hero(heroName: "Wonder Woman",
                           realName: "Diana Prince",
                           imageNameRoot: "wonderWoman")
    
    let cyborg = Hero(heroName: "Cyborg",
                      realName: "Victor Stone",
                      imageNameRoot: "cyborg")
    
    let flash = Hero(heroName: "Flash",
                     realName: "Barry Allen",
                     imageNameRoot: "flash")
    
    let aqauman = Hero(heroName: "Aquaman",
                       realName: "Arthur Curry",
                       imageNameRoot: "aquaman")
    
    func getAll() -> [Hero] {
        return [batman, superman, wonderWoman, cyborg, flash, aqauman]
    }
}
