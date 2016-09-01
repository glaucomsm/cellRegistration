//
//  NibLoadableView.swift
//  cellRegistration
//
//  Created by Glauco Moraes on 01/09/16.
//  Copyright © 2016 MoBeer. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
}
