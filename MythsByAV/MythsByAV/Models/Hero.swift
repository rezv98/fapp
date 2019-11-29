//
//  Hero.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct Hero: Codable {
    var father: String
    var hero_type: String
    var home: String
    var mother: String
    var name: String
    var power: String
    init() {
        father = "Unknown"
        hero_type = "Unknown"
        home = "Unknown"
        mother = "Unknown"
        name = "No name"
        power = "Unknown"
    }
}
