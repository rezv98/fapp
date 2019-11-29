//
//  HeroListViewModel.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

class HeroListViewModel: ObservableObject {
    @Published var heroes = [HeroViewModel]()
    
    init() {
        GreekMythologyService().getHeroes { heroes in
            if let heroes = heroes {
                self.heroes = heroes.map(HeroViewModel.init)
            }
        }
        
    }
}
