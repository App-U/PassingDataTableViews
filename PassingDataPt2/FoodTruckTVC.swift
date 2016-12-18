//
//  FoodTruckTVC.swift
//  PassingDataPt2
//
//  Created by Donovan Cotter on 12/17/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

import UIKit

class FoodTruckTVC: UITableViewController {

    let foodTruckCellIdentifier = "FoodTruckCell"
    
    var foodTrucks = [FoodTruck]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodTrucks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: foodTruckCellIdentifier, for: indexPath)
        
        let foodTruck = foodTrucks[indexPath.row]
        
        cell.textLabel?.text = foodTruck.name
        
        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPathForSelectedRow
        
        guard let selectedRow = indexPath?.row else { return }
        
        let selectedFoodTruck = foodTrucks[selectedRow]
        
        let destinationVC = segue.destination as? MenuTVC
        
        destinationVC?.menuItems = selectedFoodTruck.menu.foodItems
    }

}
