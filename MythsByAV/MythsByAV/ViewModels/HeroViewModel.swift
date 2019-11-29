//
//  HeroViewModel.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct HeroViewModel: Identifiable {
    var id = UUID()
    
    var hero: Hero
    
    init(hero: Hero) {
        self.hero = hero
    }
    
    var name: String {
        return self.hero.name
    }
    
    var father: String {
        return self.hero.father
    }
    var heroType: String {
        return self.hero.hero_type
    }
    var home: String {
        return self.hero.home
    }
    var mother: String {
        return self.hero.mother
    }
  
    var power: String {
        return self.hero.power
    }
}
