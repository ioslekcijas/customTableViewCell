//
//  HomeCell.swift
//  CustomCellsTest
//
//  Created by Armands Berzins on 12/04/2021.
//

import UIKit

class HomeCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(with hero: Hero) {
        headlineLabel.text = hero.heroName
        bottomLabel.text = hero.realName
        profileImageView.image = hero.getImage(for: .profile)
    }
}
