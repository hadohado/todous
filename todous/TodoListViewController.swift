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
}

