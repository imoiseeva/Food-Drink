//
//  FoodTableViewController.swift
//  Food&Drink
//
//  Created by Irina Moiseeva on 22.02.2021.
//

import UIKit

class FoodTableViewController: UITableViewController{
    
    
    let menu = ["Шашлык", "Ребрышки", "Люля-кебаб", "Колбаски", "Эскалоп",
                "Куриные крылышки", "Жареный сыр", "Наггетсы", "Кордон блю"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menu.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForFood", for: indexPath)
        
       
        var content = cell.defaultContentConfiguration()
        content.text = menu[indexPath.row]
        content.image = UIImage(named: menu[indexPath.row])
        content.secondaryText = "Цена: 500р/100гр"
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
            

}
