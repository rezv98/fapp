//
//  MythListViewModel.swift
//  MythsByAV
//
//  Created by Estefano Zegarra on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

class MythListViewModel: ObservableObject {
    @Published var myths = [MythViewModel]()
    
    
    init() {
        GreekMythologyService().getMyths { myths in
            if let myths = myths {
                self.myths = myths.map(MythViewModel.init)
            }
        }
    }
}
