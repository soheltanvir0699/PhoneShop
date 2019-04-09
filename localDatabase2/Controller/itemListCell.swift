//
//  itemListCell.swift
//  localDatabase2
//
//  Created by Muzahid on 7/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import UIKit

class itemListCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var brand: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
