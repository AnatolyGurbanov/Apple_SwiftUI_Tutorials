//
//  LandmarksApp.swift
//  LandmarksApp
//
//  Created by Anatoly Gurbanov on 01.09.2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
