//
//  PlacesViewController.swift
//  PlacesApp
//
//  Created by Prudhvi Gadiraju on 4/3/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import UIKit

class PlacesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        fetchData()
        setupTableView()
        setupAddButton()
    }
    
    fileprivate func fetchData() {
        PlaceFunctions.readPlaces { [weak self] in
            self?.tableView.reloadData()
        }
    }
    
    fileprivate func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    fileprivate func setupAddButton() {
        addButton.createFAB()
        
        addButton.backgroundColor = Theme.theme.accentColor
        view.addSubview(addButton)
    }
    @IBAction func addButtonTapped(_ sender: Any) {
//        let addPlacesViewController = AddPlacesViewController()
//        present(addPlacesViewController, animated: true, completion: nil)
    }
}

extension PlacesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.placeModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PlacesTableViewCell
        let placeModel = Data.placeModels[indexPath.row]
        cell.setupPlaceModel(placeModel: placeModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
