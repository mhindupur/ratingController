//
//  PlayerDetails.swift
//  ratingController
//
//  Created by manjunath Hindupur on 25/11/15.
//  Copyright © 2015 manjunath Hindupur. All rights reserved.
//

import UIKit

class PlayerDetails: UITableViewController {
    
    @IBOutlet weak var detailLabel: UILabel!

   
    @IBOutlet weak var nameTextField: UITextField!
    
    required init?(coder aDecoder: NSCoder) {
        print("Player details initiated")
        super.init(coder: aDecoder);
    }
    
    
    deinit
    {
        print(print("adding Text for Testing GitHub commit"))
    }
    var player:Player?
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        if indexPath.section == 0
        {
        nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayer" {
            player = Player(name: nameTextField.text!, game: "Chess", rating: 1)
        }
        
    }
    
    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue)
    {
        let gameCellData = segue.sourceViewController as? GamePicker
        
        //String selectedGame =gameCellData?.selectedGame
        
        
        
    }

}
