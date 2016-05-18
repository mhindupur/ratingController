//
//  Player.swift
//  ratingController
//
//  Created by manjunath Hindupur on 23/11/15.
//  Copyright © 2015 manjunath Hindupur. All rights reserved.
//

import Foundation
import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}
