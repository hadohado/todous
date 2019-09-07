//
//  ViewController.swift
//  todous
//
//  Created by ha tuong do on 9/5/19.
//  Copyright © 2019 alpine. All rights reserved.
//

import UIKit

// class ViewController: UIViewController {
class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find money", "Generate wealth", "Excitement everyday" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK tableview datasource methods
    // how many rows
    
    //type "table" to get popup then get numberOfRowsInsection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

    //MARK tableview delegate method
    
    // delegate method that detect which row was selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(indexPath.row, itemArray[indexPath.row])
        // tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK add new items
    @IBAction func addButtonPressed2(_ sender: UIBarButtonItem) {
        // print("press button")
        let alert = UIAlertController(title: "Add new toto item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            // what will happen once click "Add Item" button
            print("success here")
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new iem"
            print(alertTextField.text!)
        }
        // add action to the alert
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
}

