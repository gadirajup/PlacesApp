//
//  PlaceModel.swift
//  PlacesApp
//
//  Created by Prudhvi Gadiraju on 4/3/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import Foundation

class PlaceModel {
    var id: UUID!
    var title: String!
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
}
