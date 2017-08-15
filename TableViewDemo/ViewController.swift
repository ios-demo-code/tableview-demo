//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Soeng Saravit on 7/1/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    var fruits:[String] = ["Apple","Apricot","Banana","Blueberry", "Cantaloupe","Apple","Apricot","Banana","Blueberry", "Cantaloupe","Apple","Apricot","Banana","Blueberry", "Cantaloupe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.myTableView.delegate = self
//        self.myTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = fruits[indexPath.item]
        cell.imageView?.image = UIImage(named: fruits[indexPath.item])
        return cell
    }


}

