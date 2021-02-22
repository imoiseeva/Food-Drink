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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = menu[indexPath.row]
        cell.imageView?.image = UIImage(named: menu[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
            

}
