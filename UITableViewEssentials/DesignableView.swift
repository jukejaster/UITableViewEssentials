//
//  DesignableView.swift
//  UITableViewEssentials
//
//  Created by Juke Jaster on 9/6/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var isRound: Bool = false {
        didSet {
            cornerRadius = bounds.height / 2
        }
    }
}
