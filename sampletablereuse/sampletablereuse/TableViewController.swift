//
//  TableViewController.swift
//  sampletablereuse
//
//  Created by Vineeth Vijayan on 27/10/15.
//  Copyright © 2015 Vineeth Vijayan. All rights reserved.
//

import UIKit

class Student {
    var name: String
    var rank: Int
    
    init (str: String){
        name = str
        rank = 0
    }
}

class TableViewController: UITableViewController {

    var students = [Student]()
    var selectedIndex = NSIndexPath(forRow: 0, inSection: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        students.append(Student(str: "A"))
        students.append(Student(str: "B"))
        students.append(Student(str: "C"))
        students.append(Student(str: "D"))
        students.append(Student(str: "E"))
        students.append(Student(str: "F"))
        students.append(Student(str: "G"))
        students.append(Student(str: "H"))
        students.append(Student(str: "I"))
        students.append(Student(str: "K"))
        students.append(Student(str: "J"))
        students.append(Student(str: "K"))
        students.append(Student(str: "L"))
        students.append(Student(str: "M"))
        students.append(Student(str: "N"))
        students.append(Student(str: "O"))
        students.append(Student(str: "P"))
        students.append(Student(str: "Q"))
        students.append(Student(str: "R"))
        students.append(Student(str: "S"))
        
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return students.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell

        // Configure the cell...
        cell._name.text = students[indexPath.row].name
        cell._segmentedControl.selectedSegmentIndex = students[indexPath.row].rank
        cell._segmentedControl.tag = indexPath.row
        
        cell._segmentedControl.addTarget(self, action: "updateRank:", forControlEvents: UIControlEvents.ValueChanged)

        return cell
    }
    
    func updateRank(sender: UISegmentedControl){
        students[sender.tag].rank = sender.selectedSegmentIndex
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
