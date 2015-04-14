//
//  BackTableVC.swift
//  Slide Menu
//
//  Created by Maxi Winkler on 14.04.15.
//  Copyright (c) 2015 Informaticamaxi. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController{
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Hello", "second", "world"]
        
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        return cell
    }
    
}