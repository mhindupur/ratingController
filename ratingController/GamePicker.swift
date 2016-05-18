//
//  GamePicker.swift
//  ratingController
//
//  Created by manjunath Hindupur on 25/11/15.
//  Copyright © 2015 manjunath Hindupur. All rights reserved.
//

import UIKit

class GamePicker: UITableViewController {
    
    var Games:[String] = ["Angry Birds",
        "Chess",
        "Russian Roulette",
        "Spin the Bottle",
        "Texas Hold'em Poker",
        "Tic-Tac-Toe"]
    
    var selectedGame:String? {
        didSet {
            if let game = selectedGame {
                selectedGameIndex = Games.indexOf(game)!
            }
        }
    }
    var selectedGameIndex:Int?
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Games.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("GameCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = Games[indexPath.row] as String
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if let index = selectedGameIndex
        {
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType = .None
            
        }
        selectedGame = Games[indexPath.row]
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
        
    }

}
