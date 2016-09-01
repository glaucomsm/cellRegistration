//
//  ReusableView.swift
//  cellRegistration
//
//  Created by Glauco Moraes on 01/09/16.
//  Copyright © 2016 MoBeer. All rights reserved.
//

import UIKit

protocol ReusableView {
    static var identifier: String { get }
}

extension ReusableView where Self: UIView {
    static var identifier: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
}

extension UITableViewCell: ReusableView {
    
}
