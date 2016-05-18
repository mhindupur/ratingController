//
//  PlayerCell.swift
//  ratingController
//
//  Created by manjunath Hindupur on 24/11/15.
//  Copyright © 2015 manjunath Hindupur. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var gameLabel : UILabel!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var ratingImageView : UIImageView!
    
    var player: Player! {
        didSet {
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = imageForRating(player.rating)
        }
    }
    
    func imageForRating(rating :Int) -> UIImage?
    {
        let ImageName = "\(rating)Stars";
        return UIImage(named: ImageName);
    }

}
