//
//  UITableViewExtensions.swift
//  cellRegistration
//
//  Created by Glauco Moraes on 01/09/16.
//  Copyright © 2016 MoBeer. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell where T: ReusableView>(_: T.Type) {
        self.registerClass(T.self, forCellReuseIdentifier: T.identifier)
    }
    
    func register<T: UITableViewCell where T: protocol<ReusableView, NibLoadableView>>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        self.registerNib(nib, forCellReuseIdentifier: T.identifier)
    }
    
    func dequeuReusableCell<T: UITableViewCell where T: ReusableView>(forIdexPath indexPath: NSIndexPath) -> T {
        guard let cell = self.dequeueReusableCellWithIdentifier(T.identifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.identifier)")
        }
        return cell
    }
}
