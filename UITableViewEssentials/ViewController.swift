//
//  ViewController.swift
//  UITableViewEssentials
//
//  Created by Juke Jaster on 9/6/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    private let contacts = [
        "Dan",
        "Joan",
        "John",
        "Chris"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: - UITableViewDataSource
extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row]
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController { }

