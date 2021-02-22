//
//  ViewController.swift
//  Food&Drink
//
//  Created by Irina Moiseeva on 22.02.2021.
//

import UIKit

class PlacesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)
        cell.textLabel?.text = "Test"
        return cell
    }

}

