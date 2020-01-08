//
//  itemDetailsLayout.swift
//  localDatabase2
//
//  Created by Muzahid on 4/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import UIKit


class itemListLayout: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    var phone = [Phonedetails]()
    
    
    var indexPath2: Int!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phone.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ItemListCell
        
        cell?.name.text = phone[indexPath.row].name
        cell?.brand.text = phone[indexPath.row].brand
        cell?.price.text = String(phone[indexPath.row].price)
        cell?.tblImage.image = UIImage(data: (phone[indexPath.row].image! as NSData) as Data)
       
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
  
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            phone = localData.shareInstance.deleteData(index: indexPath.row)
            self.tableview.deleteRows(at: [indexPath], with: .automatic)
            self.tableview.reloadData()
            
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let listvc:itemDetailsLayout = self.storyboard?.instantiateViewController(withIdentifier: "itemDetails") as! itemDetailsLayout
        
        
        
        
        
        listvc.name2 = phone[indexPath.row].name
        listvc.brand2 = phone[indexPath.row].brand
        listvc.price2 = Int(phone[indexPath.row].price)
        listvc.model2 = phone[indexPath.row].model
        listvc.quality2 = phone[indexPath.row].quality
        listvc.image2 = phone[indexPath.row].image! as Data
        
        present(listvc, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        phone = localData.shareInstance.getPhoneData()

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
