//
//  Myth.swift
//  MythsByAV
//
//  Created by Estefano Zegarra on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct Myth: Codable {
    var name: String
    var description: String
    var gods: String
    var characters: String
    var place: String
    var theme: String
    
    init(){
        name = "No name"
        description = "none"
        gods = "none"
        characters = "none"
        place = "none"
        theme = "none"
    }
}
