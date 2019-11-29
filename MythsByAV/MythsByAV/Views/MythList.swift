//
//  MythList.swift
//  MythsByAV
//
//  Created by Estefano Zegarra on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct MythRow: View {
    var myth: MythViewModel
    var body: some View {
        NavigationLink(destination: MythDetailView()) {
            Text(myth.name)
        }
    }
}

struct MythList: View {
    @ObservedObject private var mythListViewModel = MythListViewModel()
    var body: some View {
        List(self.mythListViewModel.myths) { myth in
            MythRow(myth: myth)
        }
    }
}

struct MythList_Previews: PreviewProvider {
    static var previews: some View {
        MythList()
    }
}
