//
//  DefaultTableViewCell.swift
//  cellRegistration
//
//  Created by Glauco Moraes on 01/09/16.
//  Copyright © 2016 MoBeer. All rights reserved.
//

import UIKit

class DefaultTableViewCell: UITableViewCell {
    
    //MARK: - Outlet

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    //MARK: - Initialization
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        titleLabel.text = "Name"
        detailLabel.text = "Surname"
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension DefaultTableViewCell: NibLoadableView {
    
}
