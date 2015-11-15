//
//  FirstViewController.swift
//  Charitodo
//
//  Created by Michela Burns on 11/14/15.
//  Copyright (c) 2015 Michela. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tblTasks: UITableView! //exclamation keeps it from carrying on if it doesn't exist
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view (update list)
    override func viewWillAppear(animated: Bool)
    {
        tblTasks.reloadData();
        
    }
    
    //UITableViewDelegate (Allowing user to delete tasks
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if (editingStyle == UITableViewCellEditingStyle.Delete)
        {
            taskMgr.tasks.removeAtIndex(indexPath.row) //Deletes the information from the program
            tblTasks.reloadData();//Deletes the task from the table view
            
        }
    }
    
    
    
    
    
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return taskMgr.tasks.count //How many results need to be displayed
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell (style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        return cell

    }

}

