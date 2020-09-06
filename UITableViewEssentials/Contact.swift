//
//  Contact.swift
//  UITableViewEssentials
//
//  Created by Juke Jaster on 9/6/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import Foundation

struct Contact {
    let name: (first: String, last: String)
    
    var fullName: String {
        return "\(name.first) \(name.last)"
    }
    
    var abbreviation: String {
        guard let first = name.first.first,
            let last = name.last.first else {
                return ""
        }
        
        return "\(first)\(last)"
    }
}

extension Array where Element == Contact {
    var lastInitial: String? {
        first?.abbreviation.last.map { String($0) }
    }
}
