//
//  Hero.swift
//  CustomCellsTest
//
//  Created by Armands Berzins on 12/04/2021.
//

import UIKit

enum HeroImageType {
    case profile
    case vertical
}

struct Hero {
    let heroName: String
    let realName: String
    let imageNameRoot: String
    
    func getImage(for type: HeroImageType) -> UIImage? {
        switch type {
        case .profile:
            return UIImage(named: "\(imageNameRoot)_p")
        case .vertical:
            return UIImage(named: "\(imageNameRoot)_v")
        }
    }
}
