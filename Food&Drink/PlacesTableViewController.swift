//
//  ViewController.swift
//  Food&Drink
//
//  Created by Irina Moiseeva on 22.02.2021.
//

import UIKit

class PlacesTableViewController: UITableViewController {
  
    private let places = Place.getInfo()
    private var select = 0
    

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        places.count
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "placeCell",
            for: indexPath
        ) as! PlacesTableViewCell
        
        let place = places[indexPath.row]
        
        cell.typeLabel.text = place.type
        cell.nameLabel.text = place.name
        cell.workingHoursLabel.text = place.workingHours
        cell.addressLabel.text = place.address
        cell.phoneLabel.text = place.phone
        cell.placeImageView.image = UIImage(named: place.name)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        select = indexPath.row
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let tabBarController = segue.destination as! UITabBarController
        let foodVC = tabBarController.viewControllers?.first as! FoodTableViewController
        let drinkVC = tabBarController.viewControllers?.last as! DrinkTableViewController
        foodVC.index = select
        drinkVC.menuDrink = places
        drinkVC.selectedCell = select

    }
}

