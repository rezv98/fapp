//
//  GodViewModel.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct GodViewModel: Identifiable {
    var id = UUID()
    
    var god: God
    
    init(god: God) {
        self.god = god
    }
    
    var name: String {
        return self.god.name
    }
    
    var romanName: String {
        return self.god.romanname
    }
    
    var father: String {
        return self.god.father
    }
    
    var mother: String {
        return self.god.mother
    }
    
    var power: String {
        return self.god.power
    }
    
    
}
