//
//  ViewController.swift
//  UITableViewExperiments
//
//  Created by Kenneth L. Graham on 3/3/16.
//  Copyright © 2016 Emptiness Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let tvShows = ["Sherlock", "Luther", "Once Upon a Time", "Supergirl", "House of Cards", "Jessica Jones", "Breaking Bad"]
    
    let textCellIdentifier = "TextCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: UITableViewDataSource functions
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tvShows.count
    }
    
    // this function created the cell in the tableView that will hold the data
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // here, we're reusing a cell template, a prototype cell, and then setting its attributes
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = tvShows[row]
        
        return cell
    }
    
    // MARK: UITableViewDelegate functions (optional)
    
    // this function lets the user select a given row
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print(tvShows[row])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

