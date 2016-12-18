//
//  MenuTVC.swift
//  PassingDataPt2
//
//  Created by Donovan Cotter on 12/17/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {

    let menuItemCellIdentifier = "MenuItemCell"
    
    var menuItems = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: menuItemCellIdentifier, for: indexPath)

        let menuItem = menuItems[indexPath.row]
        
        cell.textLabel?.text = menuItem

        return cell
    }

}
