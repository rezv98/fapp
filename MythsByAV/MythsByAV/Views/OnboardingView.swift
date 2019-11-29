//
//  OnboardingView.swift
//  MythsByAV
//
//  Created by Alumnos on 11/18/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    var settings = SettingsStore()
    
    @State var selected = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Mythology").bold()
                Text("Greek Mythology Information Center")
            }
            Spacer()
            Button(action: {self.onStart()}) {
                Text("Start")
            }
            .scaledToFill()
            .frame(minWidth: CGFloat(100), idealWidth: CGFloat(200), maxWidth: CGFloat(250))
            .padding()
            .background(Color.blue)
                .foregroundColor(Color.white)
            .cornerRadius(CGFloat(10))
        }
                
    }
    func onStart() {
        settings.didShowOnboarding = true
        self.presentationMode.wrappedValue.dismiss()
    }

}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
