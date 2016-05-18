//
//  ViewController.swift
//  ratingController
//
//  Created by manjunath Hindupur on 23/11/15.
//  Copyright © 2015 manjunath Hindupur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    required init?(coder aDecoder: NSCoder) {
        print("first Viewcontroller initiated")
        super.init(coder: aDecoder);
        print("tring tring")
    }
    
    
    deinit
    {
        print(print("first Viewcontroller de initiated.."))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

