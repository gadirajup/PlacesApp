//
//  UIButton.swift
//  PlacesApp
//
//  Created by Prudhvi Gadiraju on 4/3/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import UIKit

extension UIButton {
    func createFAB() {
        layer.backgroundColor = UIColor.darkGray.cgColor
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        
        moveToCorner()
    }
    
    func moveToCorner() {
        translatesAutoresizingMaskIntoConstraints = false
        bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        trailingAnchor.constraint(equalTo: superview!.trailingAnchor, constant: -16).isActive = true
        widthAnchor.constraint(equalToConstant: 56).isActive = true
        heightAnchor.constraint(equalToConstant: 56).isActive = true
    }
}
