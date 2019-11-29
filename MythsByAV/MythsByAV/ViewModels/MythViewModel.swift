//
//  MythViewModel.swift
//  MythsByAV
//
//  Created by Estefano Zegarra on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct MythViewModel: Identifiable {
    var id = UUID()
    
    var myth: Myth
    
    init(myth: Myth) {
        self.myth = myth
    }
    
    var name: String {
        return self.myth.name
    }
    
    var description: String {
        return self.myth.description
    }
    
    var gods: String {
        return self.myth.gods
    }
    
    var characters: String {
        return self.myth.characters
    }
    
    var place: String {
        return self.myth.place
    }
    
    var theme: String {
        return self.myth.theme
    }
    
}
