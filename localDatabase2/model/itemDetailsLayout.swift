//
//  itemDetailsLayout.swift
//  localDatabase2
//
//  Created by Muzahid on 4/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import UIKit

class itemDetailsLayout: UIViewController, DataPass{
    
    
   
   
    

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buyBtn.layer.cornerRadius = 8

        // Do any additional setup after loading the view.
    }
    
 

    func data(Object: [String: String]) {
        name.text = Object["price"]
    }

}
