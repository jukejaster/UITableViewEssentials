//
//  ViewController.swift
//  UITableViewEssentials
//
//  Created by Juke Jaster on 9/6/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    private let contacts: [[Contact]] = [
        [.init(name: (first: "Joan", last: "Ban")),
         .init(name: (first: "Greg", last: "Bot"))],
        [.init(name: (first: "Chris", last: "Peck"))],
        [.init(name: (first: "John", last: "Rocks"))],
        [.init(name: (first: "Dan", last: "Van"))]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: - UITableViewDataSource
extension ViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].lastInitial
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as? ContactCell else {
            fatalError("Unable to dequeue reusable cell with identifier \"contactCell.\"")
        }
        
        cell.contact = contacts[indexPath.section][indexPath.row]
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController { }

