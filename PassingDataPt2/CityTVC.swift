//
//  CityTVC.swift
//  PassingDataPt2
//
//  Created by Donovan Cotter on 12/17/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

import UIKit

class CityTVC: UITableViewController {

    let cityCellIdentifier = "CityCell"
    
    var cities = [City]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cities = loadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadData() -> [City] {
        //Detroit
        let menu1 = Menu(foodItems: ["hamburger", "hot dog", "chips", "pop", "candy"])
        let menu2 = Menu(foodItems: ["tacos", "salsa", "tortilla chips", "pop", "water"])
        let menu3 = Menu(foodItems: ["pizza", "salad", "calzone", "pop"])
        
        let foodTruck1 = FoodTruck(name: "The American", menu: menu1)
        let foodTruck2 = FoodTruck(name: "Taco Taco", menu: menu2)
        let foodTruck3 = FoodTruck(name: "Pizza Pie", menu: menu3)
        
        //New York
        let menu4 = Menu(foodItems: ["kebab", "hummus", "veggie bowl", "pop", "water"])
        let menu5 = Menu(foodItems: ["pulled pork sandwich", "BBQ chips", "french fries", "pop"])
        let menu6 = Menu(foodItems: ["mac and cheese", "salad", "veggie wrap", "lemonade"])
        
        let foodTruck4 = FoodTruck(name: "Kebab's", menu: menu4)
        let foodTruck5 = FoodTruck(name: "BB-Quick", menu: menu5)
        let foodTruck6 = FoodTruck(name: "Truck Delight", menu: menu6)
        
        //San Diego
        let menu7 = Menu(foodItems: ["chicken curry", "indian rice", "red lentil curry", "pop", "water"])
        let menu8 = Menu(foodItems: ["italian sub", "veggie sub", "chips", "cookies", "pop"])
        let menu9 = Menu(foodItems: ["loaded hot dog", "wedges", "panini", "water"])
        
        let foodTruck7 = FoodTruck(name: "Curry Up", menu: menu7)
        let foodTruck8 = FoodTruck(name: "Subbers", menu: menu8)
        let foodTruck9 = FoodTruck(name: "The Food Stop", menu: menu9)
        
        //Cities
        let detroit = City(name: "Detroit", foodTrucks: [foodTruck1, foodTruck2, foodTruck3])
        let newYork = City(name: "New York", foodTrucks: [foodTruck4, foodTruck5, foodTruck6])
        let sanDiego = City(name: "San Diego", foodTrucks: [foodTruck7, foodTruck8, foodTruck9])
        
        return [detroit, newYork, sanDiego]
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cityCellIdentifier, for: indexPath)
        
        let city = cities[indexPath.row]
        
        cell.textLabel?.text = city.name
        
        
        return cell
    }

     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = self.tableView.indexPathForSelectedRow
        
        guard let selectedRow = indexPath?.row else { return }
        
        let selectedCity = cities[selectedRow]
        
        let destinationVC = segue.destination as? FoodTruckTVC
        
        destinationVC?.foodTrucks = selectedCity.foodTrucks

     }

}
