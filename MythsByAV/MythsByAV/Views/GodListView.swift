//
//  GodListView.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct GodRow: View {
    var god: GodViewModel
    @State var rating: Int
    var body: some View {
        NavigationLink(destination: DetailView(god: god,rating: $rating)) {
            Text(god.name)
        }
    }
}

struct GodListView: View {
    @ObservedObject private var godListViewModel = GodListViewModel()
    
    var body: some View {
        List(self.godListViewModel.gods) { god in
            GodRow(god: god, rating: 0)
        }
    }
}

struct GodListView_Previews: PreviewProvider {
    static var previews: some View {
        GodListView()
    }
}
