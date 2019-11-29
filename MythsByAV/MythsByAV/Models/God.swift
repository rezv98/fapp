//
//  God.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct God: Codable {
    var name: String
    var romanname: String
    var power: String
    var symbol: String
    var father: String
    var mother: String
    init() {
        name = "No name"
        romanname = "No name"
        power = "None"
        symbol = "None"
        father = "Unknown"
        mother = "Unknown"
    }
}
