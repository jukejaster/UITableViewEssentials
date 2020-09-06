//
//  ContactCell.swift
//  UITableViewEssentials
//
//  Created by Juke Jaster on 9/6/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var abbreviationLabel: UILabel!
    
    var contact: Contact? {
        didSet {
            guard let contact = contact else {
                return
            }
            
            nameLabel?.text = contact.fullName
            abbreviationLabel.text = contact.abbreviation
        }
    }
}
