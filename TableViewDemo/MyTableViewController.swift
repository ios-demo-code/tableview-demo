//
//  MyTableViewController.swift
//  TableViewDemo
//
//  Created by Soeng Saravit on 7/1/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var fruits:[String] = ["Apple","Apricot","Banana","Blueberry","Cantaloupe"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruits.count
    }
 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = fruits[indexPath.item]
        cell.imageView?.image = UIImage(named: fruits[indexPath.item])

        return cell
    }
   

   

}
