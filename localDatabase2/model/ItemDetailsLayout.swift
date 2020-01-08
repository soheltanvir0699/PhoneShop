//
//  itemDetailsLayout.swift
//  localDatabase2
//
//  Created by Muzahid on 4/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import UIKit



class itemDetailsLayout: UIViewController{
   
    
  
    
    

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var quality: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    
    var name2: String!
    var brand2: String!
    var price2: Int!
    var quality2: String!
    var model2: String!
    var image2: Data!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buyBtn.layer.cornerRadius = 8
        name.text = name2
        price.text = String(price2)
        brand.text = brand2
        quality.text = quality2
        model.text = model2
        image.image = UIImage(data: image2)
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
