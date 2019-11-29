//
//  GodData.swift
//  MythsByAV
//
//  Created by Estefano Zegarra on 11/29/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation
import CoreData

public class GodData: NSManagedObject, Identifiable {
    @NSManaged public var id: UUID?
    @NSManaged public var rating: String?
}

extension GodData {
    static func allGodsFetchRequest() ->  NSFetchRequest<GodData> {
        let request: NSFetchRequest<GodData> = GodData.fetchRequest() as! NSFetchRequest<GodData>
        request.sortDescriptors = [NSSortDescriptor(key: "rating", ascending: true)]
        return request
    }
}



