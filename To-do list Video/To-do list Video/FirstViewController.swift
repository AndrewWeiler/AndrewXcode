//
//  FirstViewController.swift
//  To-do list Video
//
//  Created by Andrew Weiler on 4/9/15.
//  Copyright (c) 2015 Andrew Weiler. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMGR.tasks.count
    }
    
    
    //Returning to view 
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }


    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
    
        cell.textLabel!.text = taskMGR.tasks[indexPath.row].name
        cell.detailTextLabel!.text = taskMGR.tasks[indexPath.row].desc
        
        
        return cell
    }
}

