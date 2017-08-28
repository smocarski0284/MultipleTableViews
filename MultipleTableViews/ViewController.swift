//
//  ViewController.swift
//  MultipleTableViews
//
//  Created by apcs2 on 8/23/17.
//  Copyright © 2017 apcs2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var toppingsTableView: UITableView!
    @IBOutlet weak var finalPizzaTableView: UITableView!
    
    var toppings = [Toppings]()
    var finishPizza = [FinalPizza]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var sausage = Toppings(topping: "Sausage")
        var pepperoni = Toppings(topping: "Pepperoni")
        var mushrooms = Toppings(topping: "Mushrooms")
        var onions = Toppings(topping: "Onions")
        var peppers = Toppings(topping: "Peppers")
        var olives = Toppings(topping: "Olives")
        var beef = Toppings(topping: "Beef")
        var chicken = Toppings(topping: "Chicken")
        var tomatoes = Toppings(topping: "Tomatoes")
        var pineapples = Toppings(topping: "Pineapples")
        var anchovies = Toppings(topping: "Anchovies")
        
        toppings.append(sausage)
        toppings.append(pepperoni)
        toppings.append(mushrooms)
        toppings.append(onions)
        toppings.append(peppers)
        toppings.append(olives)
        toppings.append(beef)
        toppings.append(chicken)
        toppings.append(tomatoes)
        toppings.append(pineapples)
        toppings.append(anchovies)
        
        var cheese = FinalPizza(ingredient: "Cheese")
        
        finishPizza.append(cheese)
        
        
    }

    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell: UITableViewCell?
        
        if tableView == self.toppingsTableView
        {
            cell = tableView.dequeueReusableCell(withIdentifier: "toppingcell", for: indexPath)
            cell?.textLabel?.text = toppings[indexPath.row].topping
        }
        
        if tableView == self.finalPizzaTableView
        {
            cell = tableView.dequeueReusableCell(withIdentifier: "finalcell", for: indexPath)
            cell?.textLabel?.text = finishPizza[indexPath.row].ingredient
        }
        
        return cell!
    }
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var count: Int?
        
        if tableView == self.toppingsTableView
        {
            count = toppings.count
        }
        
        if tableView == self.finalPizzaTableView
        {
            count = finishPizza.count
        }
        
        return count!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let cell = UITableViewCell()
        
        if tableView == self.toppingsTableView
        {
            var hi = "hi"
            toppings.append(<#T##newElement: Toppings##Toppings#>)
            toppings.remove(at: indexPath.row)
            toppingsTableView.reloadData()
        }
    }

}

