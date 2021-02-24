//
//  DrinkTableViewController.swift
//  Food&Drink
//
//  Created by Максим Никитюк on 23.02.2021.
//

import UIKit

class DrinkTableViewController: UITableViewController {
    
    var menuDrink:[Place] = []
    var selectedCell = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuDrink.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sellDrink", for: indexPath)
        
       
        var content = cell.defaultContentConfiguration()
     //   content.text = menuDrink.drinkMenu[selectedCell[indexPath.row]]
       // content.image = UIImage(named: menuDrink[indexPath.row])
        content.secondaryText = "Цена: 500р"
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
            

}

