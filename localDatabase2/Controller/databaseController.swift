//
//  databaseController.swift
//  localDatabase2
//
//  Created by Muzahid on 8/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class localData {
    static var shareInstance = localData()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    func save(object: [String: String]) {
        let student = NSEntityDescription.insertNewObject(forEntityName: "Phonedetails", into: context!) as! Phonedetails
        
        
        
        student.brand = object["brand"]
        student.name = object["name"]
        student.price = object["price"] 
        do {
            try context?.save()
        } catch  {
            print("data is not save")
        }
        
        
        
}
    
    func getPhoneData() -> [Phonedetails]{
        var phone = [Phonedetails]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Phonedetails")
        do {
            phone = try context?.fetch(fetchRequest) as! [Phonedetails]
        } catch {
            print("can not get data")
            
        }
        return phone
    }
    
    func deleteData(index: Int) ->[Phonedetails] {
        var phone = getPhoneData()
        
        context?.delete(phone[index])
        phone.remove(at: index)
        do {
            try context?.save()
        } catch  {
            print("is not delete")
        }
        return phone
    }

}
