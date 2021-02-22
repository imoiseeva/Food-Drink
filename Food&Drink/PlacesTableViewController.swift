//
//  ViewController.swift
//  Food&Drink
//
//  Created by Irina Moiseeva on 22.02.2021.
//

import UIKit

class PlacesTableViewController: UITableViewController {
  
    let places = Place.getInfo()
    

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
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }

}

