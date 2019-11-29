//
//  UserDefaultsConfig.swift
//  MythsByAV
//
//  Created by Alumnos on 11/18/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

struct UserDefaultsConfig {
    @UserDefault("didShowOnboarding", defaultValue: false)
    static var didShowOnboarding: Bool
}

