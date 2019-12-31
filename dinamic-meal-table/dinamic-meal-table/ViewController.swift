//
//  ViewController.swift
//  dinamic-meal-table
//
//  Created by Felipe Pereira - PERSONAL on 30/12/19.
//  Copyright © 2019 Felipe Pereira - PERSONAL. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let mealsList = ["Spaghetti", "Sushi","Pizza", "Hamburguer"]
    //  This method checks once the view is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
         print("Table view controller was loaded")
    }
    //EVERY SINGLE TIME WE ARE USING TABLE VIEW WE MUST IMPLEMENT DOES TWO METHODS
    //ONE WITH HOW MANY ROWS AND THE OTHER WITH THE CONTENT OF THE ROWS
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealsList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Which info I want to show when we are at position 0,1 and 2
        let cell = UITableViewCell(style: .default,reuseIdentifier: nil)
        //Getting the meal that the table view is rendering at this moment
        let meal = mealsList[indexPath.row]
        cell.textLabel?.text = meal
        return cell
    }


}

