//
//  DrinkTableViewController.swift
//  Food&Drink
//
//  Created by Максим Никитюк on 23.02.2021.
//

import UIKit

class DrinkTableViewController: UITableViewController {
    
    let drink = Drinks.getDrink()
    var selectedCell = 0
    var menuDrink = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dr = drink[menuDrink]
        return drink.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sellDrink", for: indexPath)
        
        let dr = drink[menuDrink]
        var content = cell.defaultContentConfiguration()
        content.text = dr.drink[indexPath.row]
        content.image = UIImage(named: dr.drink[indexPath.row])
        content.secondaryText = dr.cost[indexPath.row]
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
            

}

