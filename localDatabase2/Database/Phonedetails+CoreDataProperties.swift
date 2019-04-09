//
//  Phonedetails+CoreDataProperties.swift
//  localDatabase2
//
//  Created by Muzahid on 8/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//
//

import Foundation
import CoreData


extension Phonedetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Phonedetails> {
        return NSFetchRequest<Phonedetails>(entityName: "Phonedetails")
    }

    @NSManaged public var name: String?
    @NSManaged public var price: String?
    @NSManaged public var brand: String?

}
