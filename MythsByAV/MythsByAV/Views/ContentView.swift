//
//  ContentView.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var shouldShowOnboarding: Bool = SettingsStore().shouldShowOnboarding
 var body: some View {
     TabView {
         NavigationView {
             GodListView()
            .navigationBarTitle(Text("Gods"))
         }.tabItem() {
             Image("zeus")
             Text("Gods")
         }
         NavigationView {
             HeroListView()
                 .navigationBarTitle(Text("Heroes"))
         }.tabItem() {
             Image("strong")
             Text("Heroes")
         }
         NavigationView {
             MythList()
                 .navigationBarTitle(Text("Myths"))
         }.tabItem() {
             Image("myth")
             Text("Myths")
         }
         NavigationView {
             Text("Locations")
             .navigationBarTitle(Text("Locations"))
         }.tabItem() {
             Image("museum")
             Text("Locations")
         }
         NavigationView {
             Text("Settings")
             .navigationBarTitle(Text("Settings"))
         }.tabItem() {
             Image("settings")
             Text("Settings")
         }
         .navigationBarTitle(Text("Mythology"))
     }.sheet(isPresented: self.$shouldShowOnboarding) {
        OnboardingView()
    }
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
