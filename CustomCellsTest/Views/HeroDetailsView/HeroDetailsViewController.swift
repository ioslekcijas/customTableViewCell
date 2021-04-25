//
//  HeroDetailsViewController.swift
//  CustomCellsTest
//
//  Created by Armands Berzins on 13/04/2021.
//

import UIKit

class HeroDetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var hero: Hero? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let hero = hero else { return }
        imageView.image = hero.getImage(for: .vertical)
        title = hero.heroName
    }
}
