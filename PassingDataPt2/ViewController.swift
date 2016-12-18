//
//  ViewController.swift
//  PassingDataPt2
//
//  Created by Donovan Cotter on 12/17/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        let detroit = City(name: "Detroit", foodTrucks: [foodTruck1, foodTruck2, foodTruck3])
        let newYork = City(name: "New York", foodTrucks: [foodTruck4, foodTruck5, foodTruck6])
        let sanDiego = City(name: "San Diego", foodTrucks: [foodTruck7, foodTruck8, foodTruck9])
        
        return [detroit, newYork, sanDiego]

    }


}

