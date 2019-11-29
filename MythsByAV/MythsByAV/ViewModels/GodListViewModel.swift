//
//  GodListViewModel.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

class GodListViewModel: ObservableObject {
    @Published var gods = [GodViewModel]()
    
    init() {
        GreekMythologyService().getGods { gods in
            if let gods = gods {
                self.gods = gods.map(GodViewModel.init)
            }
            
        }
    }
}
