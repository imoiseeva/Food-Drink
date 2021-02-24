//
//  FoodTableViewController.swift
//  Food&Drink
//
//  Created by Irina Moiseeva on 22.02.2021.
//

import UIKit

class FoodTableViewController: UITableViewController{
    
    let menu = Food.getMenu()
    var index = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let mn = menu[index]
        return mn.menu.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForFood", for: indexPath)
        
        let mn = menu[index]
        var content = cell.defaultContentConfiguration()
        content.text = mn.menu[indexPath.row]
        content.image = UIImage(named: mn.menu[indexPath.row])
        content.secondaryText = mn.cost[indexPath.row]
        
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}
