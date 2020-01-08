//
//  buyerDetailsLayout.swift
//  localDatabase2
//
//  Created by Muzahid on 4/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import UIKit

protocol RevenueData {
    func Data(total: Int, totalPrice: Int)
}

class buyerDetailsLayout: UIViewController {
    @IBOutlet weak var sellBtn: UIButton!
    @IBOutlet weak var nid: UITextField!
    var datapass: RevenueData!
    
    @IBOutlet weak var price: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sellBtn.layer.cornerRadius = 8

        // Do any additional setup after loading the view.
    }

  
    
    @IBAction func sellAction(_ sender: UIButton) {
        let listvc = self.storyboard?.instantiateViewController(withIdentifier: "firstview") as! ViewController
        let currentDate = String(Util.getDate())
        let nid = self.nid.text
        let price = Int(self.price.text!)
        localData.shareInstance.saveSeller(Object: nid!, price: price!, date: currentDate)
        Util.dataPass.price(int: price!)
        Util.dataPass.sellTotal(int: 1)
        
        present(listvc, animated: true, completion: nil)
    }
    
 
    


}
