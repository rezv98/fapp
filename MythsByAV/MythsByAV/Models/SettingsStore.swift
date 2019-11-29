//
//  SettingsStore.swift
//  MythsByAV
//
//  Created by Alumnos on 11/18/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

class SettingsStore: ObservableObject {
    @Published var didShowOnboarding: Bool = UserDefaultsConfig.didShowOnboarding {
        didSet {
            UserDefaultsConfig.didShowOnboarding = self.didShowOnboarding
        }
    }
    
    @Published var shouldShowOnboarding: Bool = !UserDefaultsConfig.didShowOnboarding {
        didSet {
            self.didShowOnboarding = !self.shouldShowOnboarding
        }
    }
}
