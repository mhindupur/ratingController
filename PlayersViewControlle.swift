//
//  PlayersViewControlle.swift
//  ratingController
//
//  Created by manjunath Hindupur on 23/11/15.
//  Copyright © 2015 manjunath Hindupur. All rights reserved.
//

import UIKit

let playersData = [ Player(name: "Sunil Havnur", game: "Shutle cock", rating: 4), Player(name: "Shailesh Adhikari", game: "Foot ball", rating: 4), Player(name: "Mudaseer", game: "Bowling", rating: 3), Player(name: "Fremy Jose", game: "Batting", rating: 3)]

class PlayersViewControlle: UITableViewController {
    
    required init?(coder aDecoder: NSCoder) {
        print("Players Viewcontroller initiated")
        super.init(coder: aDecoder);
    }
    
    
    deinit
    {
        print(print("Players Viewcontroller de initiated.."))
    }
    
    var plaer :Player?
    var players: [Player] = playersData

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return players.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayerCell
        
        let innerPlayer = players[indexPath.row] as Player
        
        cell.player = innerPlayer
        
//        if let nameLabel = cell.viewWithTag(100) as? UILabel {
//            nameLabel.text = innerPlayer.name
//        }
//        
//        if let GameLabel = cell.viewWithTag(101) as? UILabel
//        {
//            GameLabel.text = innerPlayer.game
//        }
//        
//        if let ImageStart = cell.viewWithTag(102) as? UIImageView
//        {
//            ImageStart.image = self.imageForRating(innerPlayer.rating)
//        }
        // Configure the cell...

        return cell
    }
    
    @IBAction func cancelPresentView (segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func DonePrsentViewController(segue: UIStoryboardSegue)
    {
        
        if let playerDetails = segue.sourceViewController as? PlayerDetails {
            
            if let localPlayer = playerDetails.player {
                players.append(localPlayer)
                
                let indexPath =  NSIndexPath(forItem: players.count - 1, inSection: 0)
                
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
                
            }
        }
    }

    func imageForRating(rating :Int) -> UIImage?
    {
        let ImageName = "\(rating)Stars";
        return UIImage(named: ImageName);
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
