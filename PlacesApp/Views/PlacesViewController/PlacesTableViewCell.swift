//
//  PlacesTableViewCell.swift
//  PlacesApp
//
//  Created by Prudhvi Gadiraju on 4/3/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import UIKit

class PlacesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cardView.addShadowAndRoundedCorners()
        cardView.backgroundColor = Theme.theme.darkerColor
    }
    
    func setupPlaceModel(placeModel: PlaceModel) {
        titleLabel.text = placeModel.title
        titleLabel.font = UIFont(name: Theme.theme.titleFont, size: 32)
        titleLabel.textColor = .white
    }
}
