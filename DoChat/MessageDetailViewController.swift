//
//  MessageDetailViewController.swift
//  DoChat
//
//  Created by Gonzalo on 15/01/16.
//  Copyright © 2016 doapps. All rights reserved.
//

import UIKit

class MessageDetailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var messages = ["Hola","k ases","Hola papu"]
    var hora = ["11:59","12:00","00:00"]
    @IBOutlet weak var messageTable: UITableView!
    @IBOutlet weak var newMessage: UITextField!
    var detailContact: User?
   
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = detailContact?.name
        // Do any additional setup after loading the view.
    }

    @IBAction func send(sender: UIButton) {
    }
    //MARK: Table
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return messages.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = messages[indexPath.row]
        cell.detailTextLabel?.text = hora[indexPath.row]
        // Configure the cell...
        
        return cell

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
