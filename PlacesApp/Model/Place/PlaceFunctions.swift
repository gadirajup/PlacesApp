//
//  PlaceFunctions.swift
//  PlacesApp
//
//  Created by Prudhvi Gadiraju on 4/3/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import Foundation

class PlaceFunctions {
    static func createPlace(placeModel: PlaceModel) {
        
    }
    
    static func readPlaces(completion: @escaping () -> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.placeModels.count == 0 {
                Data.placeModels.append(PlaceModel(title: "Ukraine"))
                Data.placeModels.append(PlaceModel(title: "Bali"))
                Data.placeModels.append(PlaceModel(title: "Japan"))
            }
            
            DispatchQueue.main.async {
                completion()
            }
        }

    }
    
    static func updatePlace(placeModel: PlaceModel) {
        
    }
    
    static func deletePlace(placeModel: PlaceModel) {
    
    }
}
