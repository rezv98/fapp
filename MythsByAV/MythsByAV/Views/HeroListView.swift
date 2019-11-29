//
//  HeroListView.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct HeroRow: View {
    var hero: HeroViewModel
    
    var body: some View {
        NavigationLink(destination: HeroDetailView()) {
                Text(hero.name)
        }
    }
}

struct HeroListView: View {
    @ObservedObject private var heroListViewModel = HeroListViewModel()
    var body: some View {
        List(self.heroListViewModel.heroes) { hero in
            HeroRow(hero: hero)
            
        }
        
    }
}

struct HeroListView_Previews: PreviewProvider {
    static var previews: some View {
        HeroListView()
    }
}
