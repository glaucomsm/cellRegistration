//
//  ViewController.swift
//  cellRegistration
//
//  Created by Glauco Moraes on 01/09/16.
//  Copyright © 2016 MoBeer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets

    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.register(DefaultTableViewCell.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource {
    
    //MARK: - UITableViewDataSource Protocol Reference
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: DefaultTableViewCell = tableView.dequeuReusableCell(forIdexPath: indexPath)
        
        return cell
    }
}

