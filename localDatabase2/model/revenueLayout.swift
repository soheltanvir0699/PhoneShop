//
//  revenueLayout.swift
//  localDatabase2
//
//  Created by Muzahid on 4/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import UIKit

class revenueLayout: UIViewController {

    @IBOutlet weak var backbtnOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backbtnOutlet.layer.cornerRadius = 8

        // Do any additional setup after loading the view.
    }
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
